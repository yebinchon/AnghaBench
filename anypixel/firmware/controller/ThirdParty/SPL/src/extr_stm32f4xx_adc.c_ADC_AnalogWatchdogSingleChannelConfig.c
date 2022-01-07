
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int CR1_AWDCH_RESET ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_CHANNEL (int ) ;
 int assert_param (int ) ;

void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel)
{
  uint32_t tmpreg = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_CHANNEL(ADC_Channel));


  tmpreg = ADCx->CR1;


  tmpreg &= CR1_AWDCH_RESET;


  tmpreg |= ADC_Channel;


  ADCx->CR1 = tmpreg;
}
