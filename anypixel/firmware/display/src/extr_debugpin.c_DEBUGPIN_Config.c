
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_pins (int ,int ) ;
 int DEBUGPIN_NUM ;
 int DEBUGPIN_POWER_AHB ;
 int ENABLE ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 int pins_debug ;

void DEBUGPIN_Config(void) {

 RCC_AHBPeriphClockCmd(DEBUGPIN_POWER_AHB, ENABLE);

    CONFIG_pins(pins_debug, DEBUGPIN_NUM);
}
