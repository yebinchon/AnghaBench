
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR2; } ;
typedef TYPE_1__ ADC_TypeDef ;


 scalar_t__ ADC_CR2_SWSTART ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

void ADC_SoftwareStartConv(ADC_TypeDef* ADCx)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));


  ADCx->CR2 |= (uint32_t)ADC_CR2_SWSTART;
}
