
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {int pin; int GPIOx; } ;


 size_t BUTTONS_POLARITY ;
 size_t GPIO_ReadInputDataBit (int ,int ) ;
 TYPE_1__* pins_buttons ;

uint8_t BUTTONS_Read(uint8_t index) {
 if(GPIO_ReadInputDataBit(pins_buttons[index].GPIOx, pins_buttons[index].pin) == ((BUTTONS_POLARITY >> index) & 1) )
  return 1;
 else
  return 0;
}
