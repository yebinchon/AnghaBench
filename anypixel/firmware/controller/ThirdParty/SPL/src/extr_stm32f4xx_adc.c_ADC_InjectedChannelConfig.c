
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int SMPR1; int SMPR2; int JSQR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int ADC_Channel_9 ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_CHANNEL (int) ;
 int IS_ADC_INJECTED_RANK (int) ;
 int IS_ADC_SAMPLE_TIME (int) ;
 int JSQR_JL_SET ;
 int JSQR_JSQ_SET ;
 int SMPR1_SMP_SET ;
 int SMPR2_SMP_SET ;
 int assert_param (int ) ;

void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime)
{
  uint32_t tmpreg1 = 0, tmpreg2 = 0, tmpreg3 = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_CHANNEL(ADC_Channel));
  assert_param(IS_ADC_INJECTED_RANK(Rank));
  assert_param(IS_ADC_SAMPLE_TIME(ADC_SampleTime));

  if (ADC_Channel > ADC_Channel_9)
  {

    tmpreg1 = ADCx->SMPR1;

    tmpreg2 = SMPR1_SMP_SET << (3*(ADC_Channel - 10));

    tmpreg1 &= ~tmpreg2;

    tmpreg2 = (uint32_t)ADC_SampleTime << (3*(ADC_Channel - 10));

    tmpreg1 |= tmpreg2;

    ADCx->SMPR1 = tmpreg1;
  }
  else
  {

    tmpreg1 = ADCx->SMPR2;

    tmpreg2 = SMPR2_SMP_SET << (3 * ADC_Channel);

    tmpreg1 &= ~tmpreg2;

    tmpreg2 = (uint32_t)ADC_SampleTime << (3 * ADC_Channel);

    tmpreg1 |= tmpreg2;

    ADCx->SMPR2 = tmpreg1;
  }


  tmpreg1 = ADCx->JSQR;

  tmpreg3 = (tmpreg1 & JSQR_JL_SET)>> 20;

  tmpreg2 = JSQR_JSQ_SET << (5 * (uint8_t)((Rank + 3) - (tmpreg3 + 1)));

  tmpreg1 &= ~tmpreg2;

  tmpreg2 = (uint32_t)ADC_Channel << (5 * (uint8_t)((Rank + 3) - (tmpreg3 + 1)));

  tmpreg1 |= tmpreg2;

  ADCx->JSQR = tmpreg1;
}
