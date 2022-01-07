
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR1; } ;
typedef TYPE_1__ TIM_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_TIM_ALL_PERIPH (TYPE_1__*) ;
 scalar_t__ TIM_CR1_CEN ;
 int assert_param (int ) ;

void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState)
{

  assert_param(IS_TIM_ALL_PERIPH(TIMx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    TIMx->CR1 |= TIM_CR1_CEN;
  }
  else
  {

    TIMx->CR1 &= (uint16_t)(~((uint16_t)TIM_CR1_CEN));
  }
}
