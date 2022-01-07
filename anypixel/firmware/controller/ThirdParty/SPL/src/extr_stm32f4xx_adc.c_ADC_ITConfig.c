
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int CR1; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ ADC_TypeDef ;


 scalar_t__ DISABLE ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_IT (scalar_t__) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState)
{
  uint32_t itmask = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));
  assert_param(IS_ADC_IT(ADC_IT));


  itmask = (uint8_t)ADC_IT;
  itmask = (uint32_t)0x01 << itmask;

  if (NewState != DISABLE)
  {

    ADCx->CR1 |= itmask;
  }
  else
  {

    ADCx->CR1 &= (~(uint32_t)itmask);
  }
}
