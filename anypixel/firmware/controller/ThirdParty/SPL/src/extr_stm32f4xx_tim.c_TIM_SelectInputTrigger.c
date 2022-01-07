
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST1_PERIPH (TYPE_1__*) ;
 int IS_TIM_TRIGGER_SELECTION (int ) ;
 scalar_t__ TIM_SMCR_TS ;
 int assert_param (int ) ;

void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource)
{
  uint16_t tmpsmcr = 0;


  assert_param(IS_TIM_LIST1_PERIPH(TIMx));
  assert_param(IS_TIM_TRIGGER_SELECTION(TIM_InputTriggerSource));


  tmpsmcr = TIMx->SMCR;


  tmpsmcr &= (uint16_t)~TIM_SMCR_TS;


  tmpsmcr |= TIM_InputTriggerSource;


  TIMx->SMCR = tmpsmcr;
}
