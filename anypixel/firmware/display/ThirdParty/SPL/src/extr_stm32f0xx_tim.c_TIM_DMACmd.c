
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ DIER; } ;
typedef TYPE_1__ TIM_TypeDef ;
typedef scalar_t__ FunctionalState ;


 scalar_t__ DISABLE ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int IS_TIM_DMA_SOURCE (scalar_t__) ;
 int IS_TIM_LIST10_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState)
{

  assert_param(IS_TIM_LIST10_PERIPH(TIMx));
  assert_param(IS_TIM_DMA_SOURCE(TIM_DMASource));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    TIMx->DIER |= TIM_DMASource;
  }
  else
  {

    TIMx->DIER &= (uint16_t)~TIM_DMASource;
  }
}
