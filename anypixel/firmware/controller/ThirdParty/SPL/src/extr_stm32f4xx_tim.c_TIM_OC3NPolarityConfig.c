
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int CCER; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST4_PERIPH (TYPE_1__*) ;
 int IS_TIM_OCN_POLARITY (int) ;
 scalar_t__ TIM_CCER_CC3NP ;
 int assert_param (int ) ;

void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity)
{
  uint16_t tmpccer = 0;


  assert_param(IS_TIM_LIST4_PERIPH(TIMx));
  assert_param(IS_TIM_OCN_POLARITY(TIM_OCNPolarity));

  tmpccer = TIMx->CCER;


  tmpccer &= (uint16_t)~TIM_CCER_CC3NP;
  tmpccer |= (uint16_t)(TIM_OCNPolarity << 8);


  TIMx->CCER = tmpccer;
}
