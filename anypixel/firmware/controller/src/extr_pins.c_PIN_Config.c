
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_pins (int ,int ) ;
 int DEBUGPIN_NUM ;
 int DEBUGPIN_POWER_AHB1 ;
 int ENABLE ;
 int PIN_POWER_AHB1 ;
 int RCC_AHB1PeriphClockCmd (int ,int ) ;
 int pins_debug ;

void PIN_Config(void) {
    RCC_AHB1PeriphClockCmd(PIN_POWER_AHB1, ENABLE);






}
