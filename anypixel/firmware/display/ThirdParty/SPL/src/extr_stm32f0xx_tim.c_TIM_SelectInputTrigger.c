
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_LIST6_PERIPH (TYPE_1__*) ;
 int IS_TIM_TRIGGER_SELECTION (scalar_t__) ;
 scalar_t__ TIM_SMCR_TS ;
 int assert_param (int ) ;

void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource)
{
  uint16_t tmpsmcr = 0;


  assert_param(IS_TIM_LIST6_PERIPH(TIMx));
  assert_param(IS_TIM_TRIGGER_SELECTION(TIM_InputTriggerSource));


  tmpsmcr = TIMx->SMCR;

  tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_TS));

  tmpsmcr |= TIM_InputTriggerSource;

  TIMx->SMCR = tmpsmcr;
}
