
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int GPIOx; int speed; int PuPd; int otype; int mode; int pin; int af; int pinsource; } ;
struct TYPE_5__ {int GPIO_Speed; int GPIO_PuPd; int GPIO_OType; int GPIO_Mode; int GPIO_Pin; } ;
typedef TYPE_1__ GPIO_InitTypeDef ;
typedef TYPE_2__ CONFIG_Pin_TypeDef ;


 int GPIO_Init (int ,TYPE_1__*) ;
 int GPIO_PinAFConfig (int ,int ,int ) ;

void CONFIG_pins(const CONFIG_Pin_TypeDef *pins, int num_pins ) {
    GPIO_InitTypeDef GPIO_InitStructure;
    int i;

    for(i = 0; i < num_pins; i++) {

        GPIO_PinAFConfig(pins[i].GPIOx, pins[i].pinsource, pins[i].af);

        GPIO_InitStructure.GPIO_Pin = pins[i].pin;
        GPIO_InitStructure.GPIO_Mode = pins[i].mode;
        GPIO_InitStructure.GPIO_OType = pins[i].otype;
        GPIO_InitStructure.GPIO_PuPd = pins[i].PuPd;
        GPIO_InitStructure.GPIO_Speed = pins[i].speed;
        GPIO_Init(pins[i].GPIOx, &GPIO_InitStructure);

    }
}
