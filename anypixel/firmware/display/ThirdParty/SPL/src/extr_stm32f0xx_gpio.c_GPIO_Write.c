
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int ODR; } ;
typedef TYPE_1__ GPIO_TypeDef ;


 int IS_GPIO_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal)
{

  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));

  GPIOx->ODR = PortVal;
}
