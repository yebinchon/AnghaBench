
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUTTONS_NUM ;
 int BUTTONS_POWER_AHB1 ;
 int CONFIG_pins (int ,int ) ;
 int ENABLE ;
 int RCC_AHB1PeriphClockCmd (int ,int ) ;
 int configured ;
 int pin_buttons ;

void BUTTONS_Config(void) {

 RCC_AHB1PeriphClockCmd(BUTTONS_POWER_AHB1, ENABLE);


    CONFIG_pins(pin_buttons, BUTTONS_NUM);

 configured = 1;
}
