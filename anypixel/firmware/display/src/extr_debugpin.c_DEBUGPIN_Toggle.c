
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {int pin; int GPIOx; } ;


 scalar_t__ Bit_SET ;
 size_t DEBUGPIN_NUM ;
 scalar_t__ GPIO_ReadInputDataBit (int ,int ) ;
 int GPIO_ResetBits (int ,int ) ;
 int GPIO_SetBits (int ,int ) ;
 int assert (int) ;
 TYPE_1__* pins_debug ;

inline void DEBUGPIN_Toggle(uint8_t index) {
    assert(index < DEBUGPIN_NUM);


    if(GPIO_ReadInputDataBit(pins_debug[index].GPIOx,pins_debug[index].pin) == Bit_SET)
        GPIO_ResetBits(pins_debug[index].GPIOx, pins_debug[index].pin);
    else
        GPIO_SetBits(pins_debug[index].GPIOx, pins_debug[index].pin);
}
