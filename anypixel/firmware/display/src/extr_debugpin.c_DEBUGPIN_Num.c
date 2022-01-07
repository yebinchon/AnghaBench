
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int pin; int GPIOx; } ;


 int DEBUGPIN_NUM ;
 int GPIO_ResetBits (int ,int ) ;
 int GPIO_SetBits (int ,int ) ;
 TYPE_1__* pins_debug ;

void DEBUGPIN_Num(uint16_t state) {
    int i;
    for(i=0; i < DEBUGPIN_NUM; i++) {
        if(state & 1)
            GPIO_SetBits(pins_debug[i].GPIOx, pins_debug[i].pin);
        else
            GPIO_ResetBits(pins_debug[i].GPIOx, pins_debug[i].pin);
        state >>= 1;
    }
}
