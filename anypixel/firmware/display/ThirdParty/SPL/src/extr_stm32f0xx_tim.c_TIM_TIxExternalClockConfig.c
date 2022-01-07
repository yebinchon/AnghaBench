
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_7__ {int SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_IC_FILTER (scalar_t__) ;
 int IS_TIM_IC_POLARITY (scalar_t__) ;
 int IS_TIM_LIST6_PERIPH (TYPE_1__*) ;
 int TI1_Config (TYPE_1__*,scalar_t__,int ,scalar_t__) ;
 int TI2_Config (TYPE_1__*,scalar_t__,int ,scalar_t__) ;
 int TIM_ICSelection_DirectTI ;
 int TIM_SelectInputTrigger (TYPE_1__*,scalar_t__) ;
 int TIM_SlaveMode_External1 ;
 scalar_t__ TIM_TIxExternalCLK1Source_TI2 ;
 int assert_param (int ) ;

void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter)
{

  assert_param(IS_TIM_LIST6_PERIPH(TIMx));
  assert_param(IS_TIM_IC_POLARITY(TIM_ICPolarity));
  assert_param(IS_TIM_IC_FILTER(ICFilter));


  if (TIM_TIxExternalCLKSource == TIM_TIxExternalCLK1Source_TI2)
  {
    TI2_Config(TIMx, TIM_ICPolarity, TIM_ICSelection_DirectTI, ICFilter);
  }
  else
  {
    TI1_Config(TIMx, TIM_ICPolarity, TIM_ICSelection_DirectTI, ICFilter);
  }

  TIM_SelectInputTrigger(TIMx, TIM_TIxExternalCLKSource);

  TIMx->SMCR |= TIM_SlaveMode_External1;
}
