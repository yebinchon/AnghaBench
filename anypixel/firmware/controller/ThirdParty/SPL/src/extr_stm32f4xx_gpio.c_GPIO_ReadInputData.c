
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ IDR; } ;
typedef TYPE_1__ GPIO_TypeDef ;


 int IS_GPIO_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
{

  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));

  return ((uint16_t)GPIOx->IDR);
}
