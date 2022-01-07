
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int CR1_DISCNUM_RESET ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_REGULAR_DISC_NUMBER (int) ;
 int assert_param (int ) ;

void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number)
{
  uint32_t tmpreg1 = 0;
  uint32_t tmpreg2 = 0;


  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_REGULAR_DISC_NUMBER(Number));


  tmpreg1 = ADCx->CR1;


  tmpreg1 &= CR1_DISCNUM_RESET;


  tmpreg2 = Number - 1;
  tmpreg1 |= tmpreg2 << 13;


  ADCx->CR1 = tmpreg1;
}
