
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int CFGR1; } ;
typedef TYPE_1__ ADC_TypeDef ;


 int ADC_CFGR1_AWDCH ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 int IS_ADC_ANALOG_WATCHDOG_CHANNEL (int ) ;
 int assert_param (int ) ;

void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog_Channel)
{
  uint32_t tmpreg = 0;


  assert_param(IS_ADC_ALL_PERIPH(ADCx));
  assert_param(IS_ADC_ANALOG_WATCHDOG_CHANNEL(ADC_AnalogWatchdog_Channel));


  tmpreg = ADCx->CFGR1;


  tmpreg &= ~ADC_CFGR1_AWDCH;


  tmpreg |= ADC_AnalogWatchdog_Channel;


  ADCx->CFGR1 = tmpreg;
}
