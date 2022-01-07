
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_COUNTER_MODE (int ) ;
 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 int TIM_CR1_CMS ;
 int TIM_CR1_DIR ;
 int assert_param (int ) ;

void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode)
{
  uint16_t tmpcr1 = 0;


  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(IS_TIM_COUNTER_MODE(TIM_CounterMode));

  tmpcr1 = TIMx->CR1;


  tmpcr1 &= (uint16_t)~(TIM_CR1_DIR | TIM_CR1_CMS);


  tmpcr1 |= TIM_CounterMode;


  TIMx->CR1 = tmpcr1;
}
