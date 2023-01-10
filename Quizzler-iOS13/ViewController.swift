//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["1+1 = 2", "True"],
        ["3-1=1", "False"],
        ["4-2=3", "False"],
        ["5+3 = 8", "True"]
    ]
    
    var quesNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // initialize the question once onpe the app
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[quesNumber][1]
        
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print("Wrong...")
        }
        
        // each time trigger the button, update the question
//        quesNumber = Int.random(in: 0...3)
        if quesNumber + 1 < quiz.count {
            quesNumber += 1
        } else {
            quesNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[quesNumber][0]
    }
}

