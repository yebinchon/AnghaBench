
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int pin; int GPIOx; } ;
typedef TYPE_1__ CONFIG_Pin_TypeDef ;


 int GPIO_ResetBits (int ,int ) ;
 int GPIO_SetBits (int ,int ) ;

void PIN_Num(const CONFIG_Pin_TypeDef *pins, uint16_t state, uint8_t num_pins) {
    int i;
    for(i = 0; i < num_pins; i++) {
        if(state & 1)
            GPIO_SetBits(pins[i].GPIOx, pins[i].pin);
        else
            GPIO_ResetBits(pins[i].GPIOx, pins[i].pin);
        state >>= 1;
    }
}
