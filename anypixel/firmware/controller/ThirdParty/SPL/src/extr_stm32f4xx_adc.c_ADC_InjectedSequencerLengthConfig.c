
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int JSQR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_INJECTED_LENGTH (int) ;
 int JSQR_JL_RESET ;
 int assert_param (int ) ;

void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length)
{
  uint32_t tmpreg1 = 0;
  uint32_t tmpreg2 = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_INJECTED_LENGTH(Length));


  tmpreg1 = ADCx->JSQR;


  tmpreg1 &= JSQR_JL_RESET;


  tmpreg2 = Length - 1;
  tmpreg1 |= tmpreg2 << 20;


  ADCx->JSQR = tmpreg1;
}
