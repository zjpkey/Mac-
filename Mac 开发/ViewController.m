//
//  ViewController.m
//  Mac 开发
//
//  Created by zjp on 16/4/25.
//  Copyright © 2016年 张金鹏. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}
- (IBAction)jisuan:(id)sender {
    self.llable.stringValue = [NSString stringWithFormat:@"%ld",self.t1.integerValue + self.t2.integerValue];;
}
- (IBAction)chu:(NSButton *)sender {
    self.type = 4;
    self.str1 = self.textfilednum.stringValue;
    [self clean];
}
- (IBAction)cheng:(NSButton *)sender {
    self.type = 3;
    self.str1 = self.textfilednum.stringValue;
    [self clean];
}
- (IBAction)jian:(NSButton *)sender {
    self.type = 2;
    self.str1 = self.textfilednum.stringValue;
    [self clean];
}
- (IBAction)jia:(NSButton *)sender {
    self.type = 1;
    self.str1 = self.textfilednum.stringValue;
    [self clean];
}
- (IBAction)jisuanbut:(NSButton *)sender {
    self.textfilednum.stringValue = [NSString stringWithFormat:@"%@%ld",self.textfilednum.stringValue,(long)sender.tag];
    
    self.str2 = self.textfilednum.stringValue;
    
}
- (IBAction)jisuannum:(NSButton *)sender {
    if (self.type == 1) {
          self.textfilednum.stringValue = [NSString stringWithFormat:@"%ld",(long)(self.str1.integerValue + self.str2.integerValue)];;
    }
    if (self.type == 2) {
            self.textfilednum.stringValue = [NSString stringWithFormat:@"%ld",(long)(self.str1.integerValue - self.str2.integerValue)];;
    }
    if (self.type == 3) {
            self.textfilednum.stringValue = [NSString stringWithFormat:@"%ld",(long)(self.str1.integerValue * self.str2.integerValue)];;
    }
    if (self.type == 4) {
        if (self.str2.integerValue == 0) {
            self.textfilednum.stringValue = [NSString stringWithFormat:@"不是数字"];
            return;
        }
            self.textfilednum.stringValue = [NSString stringWithFormat:@"%ld",(long)(self.str1.integerValue / self.str2.integerValue)];;
    }

}
- (IBAction)qingchu:(NSButton *)sender {
    self.str1 = @"";
    self.str2 = @"";
    self.textfilednum.stringValue = @"";
}

- (void)clean {
    self.textfilednum.stringValue = @"";
}

@end
