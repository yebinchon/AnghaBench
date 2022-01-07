
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR1; } ;
typedef scalar_t__ FunctionalState ;
typedef TYPE_1__ ADC_TypeDef ;


 scalar_t__ ADC_CR1_DISCEN ;
 scalar_t__ DISABLE ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_FUNCTIONAL_STATE (scalar_t__) ;
 int assert_param (int ) ;

void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_FUNCTIONAL_STATE(NewState));

  if (NewState != DISABLE)
  {

    ADCx->CR1 |= (uint32_t)ADC_CR1_DISCEN;
  }
  else
  {

    ADCx->CR1 &= (uint32_t)(~ADC_CR1_DISCEN);
  }
}
