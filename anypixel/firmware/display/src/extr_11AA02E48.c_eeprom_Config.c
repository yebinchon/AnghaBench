
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pin; } ;


 int CONFIG_pins (TYPE_1__*,int) ;
 int EEPROM_AHB ;
 int ENABLE ;
 int RCC_AHBPeriphClockCmd (int ,int ) ;
 TYPE_1__ pin ;
 int pin_mask ;

void eeprom_Config(void) {
    RCC_AHBPeriphClockCmd(EEPROM_AHB, ENABLE);
    CONFIG_pins(&pin, 1);
    pin_mask = ~pin.pin;
}
