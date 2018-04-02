//
//  ViewController.swift
//  Alion ImageView
//
//  Created by D7703_21 on 2018. 4. 2..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1; //사진의 인덱스 값이 증가
    var direction = 1; //direction이 1이면 증가 0이면 감소 구분
    @IBOutlet weak var myimageView: UIImageView!
    @IBOutlet weak var index: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지를 로드함
        myimageView.image = UIImage(named: "frame1.png")
        index.text = "1"
    }
    @IBAction func imageUpdate(_ sender: Any) {
        //count가 5이면 감소시키기 위해 direction을 0으로 변경
        if count == 5{
            direction = 0
        }
        //count가 1이면 증가시키기 위해 direction을 1으로 변경
        else if count == 1{
            direction = 1
        }
        //direction이 1이면 count를 1씩 증가
        if direction == 1{
            count += 1;}
        //direction이 0이면 count를 1씩 감소
        else if direction == 0{
            count = count - 1
        }
        myimageView.image = UIImage(named: "frame\(count).png")
        index.text = String(count)
    }
    
    
    
}

