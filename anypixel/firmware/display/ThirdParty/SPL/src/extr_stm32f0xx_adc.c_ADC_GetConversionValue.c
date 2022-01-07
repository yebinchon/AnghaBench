
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int DR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int assert_param (int ) ;

uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));


  return (uint16_t) ADCx->DR;
}
