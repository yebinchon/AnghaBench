
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CR1; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int CR1_AWDMode_RESET ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_ANALOG_WATCHDOG (int ) ;
 int assert_param (int ) ;

void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog)
{
  uint32_t tmpreg = 0;

  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_ANALOG_WATCHDOG(ADC_AnalogWatchdog));


  tmpreg = ADCx->CR1;


  tmpreg &= CR1_AWDMode_RESET;


  tmpreg |= ADC_AnalogWatchdog;


  ADCx->CR1 = tmpreg;
}
