
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_EXT_FILTER (scalar_t__) ;
 int IS_TIM_EXT_POLARITY (scalar_t__) ;
 int IS_TIM_EXT_PRESCALER (scalar_t__) ;
 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 int TIM_ETRConfig (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ TIM_SMCR_SMS ;
 scalar_t__ TIM_SMCR_TS ;
 scalar_t__ TIM_SlaveMode_External1 ;
 scalar_t__ TIM_TS_ETRF ;
 int assert_param (int ) ;

void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter)
{
  uint16_t tmpsmcr = 0;


  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(IS_TIM_EXT_PRESCALER(TIM_ExtTRGPrescaler));
  assert_param(IS_TIM_EXT_POLARITY(TIM_ExtTRGPolarity));
  assert_param(IS_TIM_EXT_FILTER(ExtTRGFilter));


  TIM_ETRConfig(TIMx, TIM_ExtTRGPrescaler, TIM_ExtTRGPolarity, ExtTRGFilter);


  tmpsmcr = TIMx->SMCR;

  tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_SMS));

  tmpsmcr |= TIM_SlaveMode_External1;

  tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_TS));
  tmpsmcr |= TIM_TS_ETRF;

  TIMx->SMCR = tmpsmcr;
}
