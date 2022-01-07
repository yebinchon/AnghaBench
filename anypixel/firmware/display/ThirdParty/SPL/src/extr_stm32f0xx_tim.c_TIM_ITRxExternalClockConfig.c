
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_INTERNAL_TRIGGER_SELECTION (int ) ;
 int IS_TIM_LIST6_PERIPH (TYPE_1__*) ;
 int TIM_SelectInputTrigger (TYPE_1__*,int ) ;
 int TIM_SlaveMode_External1 ;
 int assert_param (int ) ;

void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource)
{

  assert_param(IS_TIM_LIST6_PERIPH(TIMx));
  assert_param(IS_TIM_INTERNAL_TRIGGER_SELECTION(TIM_InputTriggerSource));

  TIM_SelectInputTrigger(TIMx, TIM_InputTriggerSource);

  TIMx->SMCR |= TIM_SlaveMode_External1;
}
