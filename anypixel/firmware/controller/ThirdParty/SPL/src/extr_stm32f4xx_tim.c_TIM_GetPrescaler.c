
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int PSC; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx)
{

  assert_param(IS_TIM_ALL_PERIPH(TIMx));


  return TIMx->PSC;
}
