//
//  ViewController.m
//  Day 1 RandomQuote
//
//  Created by Kha Nguyen on 6/28/16.
//  Copyright © 2016 Kha Nguyen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)button:(id)sender;
@property (nonatomic) NSArray *quote;
@property (nonatomic) int index;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _quote = @[@"kha",
              @"is",
              @"cool"];
    _index = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    if(_index == [_quote count]) {
        _index = 0;
    }
    NSString *q = _quote[_index];
    
    _label.text = q;
    
    _index++;
    
}
@end
