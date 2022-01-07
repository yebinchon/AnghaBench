
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCER; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST1_PERIPH (TYPE_1__*) ;
 int IS_TIM_OC_POLARITY (int ) ;
 scalar_t__ TIM_CCER_CC1P ;
 int assert_param (int ) ;

void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity)
{
  uint16_t tmpccer = 0;


  assert_param(IS_TIM_LIST1_PERIPH(TIMx));
  assert_param(IS_TIM_OC_POLARITY(TIM_OCPolarity));

  tmpccer = TIMx->CCER;


  tmpccer &= (uint16_t)(~TIM_CCER_CC1P);
  tmpccer |= TIM_OCPolarity;


  TIMx->CCER = tmpccer;
}
