
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_4__ {void* BRR; void* BSRR; } ;
typedef TYPE_1__ GPIO_TypeDef ;
typedef scalar_t__ BitAction ;


 scalar_t__ Bit_RESET ;
 int IS_GET_GPIO_PIN (void*) ;
 int IS_GPIO_ALL_PERIPH (TYPE_1__*) ;
 int IS_GPIO_BIT_ACTION (scalar_t__) ;
 int assert_param (int ) ;

void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal)
{

  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
  assert_param(IS_GET_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_BIT_ACTION(BitVal));

  if (BitVal != Bit_RESET)
  {
    GPIOx->BSRR = GPIO_Pin;
  }
  else
  {
    GPIOx->BRR = GPIO_Pin ;
  }
}
