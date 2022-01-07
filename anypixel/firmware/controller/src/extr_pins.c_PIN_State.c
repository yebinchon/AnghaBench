
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int pin; int GPIOx; } ;
typedef TYPE_1__ CONFIG_Pin_TypeDef ;


 int GPIO_ReadInputDataBit (int ,int ) ;

bool PIN_State(const CONFIG_Pin_TypeDef *pins, uint8_t index) {
    return GPIO_ReadInputDataBit(pins[index].GPIOx, pins[index].pin);
}
