
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR2; } ;
typedef scalar_t__ FlagStatus ;
typedef TYPE_1__ ADC_TypeDef ;


 int ADC_CR2_JSWSTART ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 int assert_param (int ) ;

FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx)
{
  FlagStatus bitstatus = RESET;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));


  if ((ADCx->CR2 & ADC_CR2_JSWSTART) != (uint32_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }


  return bitstatus;
}
