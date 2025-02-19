
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ CR2; } ;
typedef TYPE_1__ TIM_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_TIM_LIST4_PERIPH (TYPE_1__*) ;
 scalar_t__ TIM_CR2_CCPC ;
 int assert_param (int ) ;

void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState)
{

  assert_param(IS_TIM_LIST4_PERIPH(TIMx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  if (NewState != DISABLE)
  {

    TIMx->CR2 |= TIM_CR2_CCPC;
  }
  else
  {

    TIMx->CR2 &= (uint16_t)~TIM_CR2_CCPC;
  }
}
