
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {int pin; int GPIOx; } ;


 size_t DEBUGPIN_NUM ;
 int GPIO_SetBits (int ,int ) ;
 int assert (int) ;
 TYPE_1__* pins_debug ;

inline void DEBUGPIN_High(uint8_t index) {
    assert(index < DEBUGPIN_NUM);
    GPIO_SetBits(pins_debug[index].GPIOx, pins_debug[index].pin);
}
