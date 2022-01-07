
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int SMCR; } ;
typedef TYPE_1__ TIM_TypeDef ;


 int IS_TIM_EXT_FILTER (int) ;
 int IS_TIM_EXT_POLARITY (int) ;
 int IS_TIM_EXT_PRESCALER (int) ;
 int IS_TIM_LIST3_PERIPH (TYPE_1__*) ;
 int SMCR_ETR_MASK ;
 int assert_param (int ) ;

void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter)
{
  uint16_t tmpsmcr = 0;


  assert_param(IS_TIM_LIST3_PERIPH(TIMx));
  assert_param(IS_TIM_EXT_PRESCALER(TIM_ExtTRGPrescaler));
  assert_param(IS_TIM_EXT_POLARITY(TIM_ExtTRGPolarity));
  assert_param(IS_TIM_EXT_FILTER(ExtTRGFilter));

  tmpsmcr = TIMx->SMCR;

  tmpsmcr &= SMCR_ETR_MASK;

  tmpsmcr |= (uint16_t)(TIM_ExtTRGPrescaler | (uint16_t)(TIM_ExtTRGPolarity | (uint16_t)(ExtTRGFilter << (uint16_t)8)));

  TIMx->SMCR = tmpsmcr;
}
