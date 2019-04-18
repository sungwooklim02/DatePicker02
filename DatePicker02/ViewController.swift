//
//  ViewController.swift
//  DatePicker02
//
//  Created by D7703_22 on 2019. 4. 18..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myDataPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let locale = Locale(identifier: "ko_KO")
        myDataPicker.locale = locale
        
        myDataPicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        
    }
    @IBAction func dataPickerChanged(_ sender: Any) {
        let date = myDataPicker.date
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd HH:mm EEE a"
        let formattedDate = formatter.string(from: date)
        myLabel.text = formattedDate
        
    }
    

}

