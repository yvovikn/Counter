//
//  ViewController.swift
//  counter
//
//  Created by Vladimir Iusupov on 05.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loggingTextField: UITextView!
    @IBOutlet weak var counterField: UILabel!
    @IBOutlet weak var buttonMinusOne: UIButton!
    @IBOutlet weak var buttonPlusOne: UIButton!
    @IBOutlet weak var buttonReset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private var mainCount = 0
    private var dateTime: Date = Date()
    
    @IBAction func buttonMinusOneAction(_ sender: Any) {
        if mainCount == 0 {
            dateTime = Date()
            let formatedDate = dateTime.formatted(date: .numeric, time: .standard)
            loggingTextField.text = "\(formatedDate) попытка уменьшить значение счётчика ниже 0"
        } else if mainCount > 0 {
            mainCount -= 1
            dateTime = Date()
            let formatedDateTime = dateTime.formatted(date: .numeric, time: .standard)
            loggingTextField.text = "\(formatedDateTime) значение изменено на -1"
        }
        counterField.text = "\(mainCount)"
    }
    
    @IBAction func buttonPlusOneAction(_ sender: Any) {
        mainCount += 1
        counterField.text = "\(mainCount)"
        dateTime = Date()
        let formatedDateTime = dateTime.formatted(date: .numeric, time: .standard)
        loggingTextField.text = "\(formatedDateTime) значение изменено на +1"
        
    }
    
    @IBAction func buttonResetAction(_ sender: Any) {
        mainCount = 0
        dateTime = Date()
        let formatedDateTime = dateTime.formatted(date: .numeric, time: .standard)
        loggingTextField.text = "\(formatedDateTime) значение сброшено"
    }
}


