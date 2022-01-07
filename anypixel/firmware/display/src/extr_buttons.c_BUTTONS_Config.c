
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUTTONS_NUM ;
 int BUTTONS_POWER_AHB ;
 int CONFIG_pins (int ,int ) ;
 int ENABLE ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 int pins_buttons ;

void BUTTONS_Config(void) {

 RCC_AHBPeriphClockCmd(BUTTONS_POWER_AHB, ENABLE);

    CONFIG_pins(pins_buttons, BUTTONS_NUM);
}
