
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CFGR2; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_CLOCKMODE (scalar_t__) ;
 int assert_param (int ) ;

void ADC_ClockModeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ClockMode)
{

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_CLOCKMODE(ADC_ClockMode));


    ADCx->CFGR2 = (uint32_t)ADC_ClockMode;

}
