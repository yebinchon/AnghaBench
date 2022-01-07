
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ SMPR; scalar_t__ CHSELR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 scalar_t__ ADC_SMPR1_SMPR ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_CHANNEL (scalar_t__) ;
 int IS_ADC_SAMPLE_TIME (scalar_t__) ;
 int assert_param (int ) ;

void ADC_ChannelConfig(ADC_TypeDef* ADCx, uint32_t ADC_Channel, uint32_t ADC_SampleTime)
{
  uint32_t tmpreg = 0;


  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_CHANNEL(ADC_Channel));
  assert_param(IS_ADC_SAMPLE_TIME(ADC_SampleTime));


  ADCx->CHSELR |= (uint32_t)ADC_Channel;


  tmpreg &= ~ADC_SMPR1_SMPR;


  tmpreg |= (uint32_t)ADC_SampleTime;


  ADCx->SMPR = tmpreg ;
}
