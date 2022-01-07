
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ CR; scalar_t__ DR; } ;
typedef TYPE_1__ ADC_TypeDef ;


 scalar_t__ ADC_CR_ADCAL ;
 scalar_t__ CALIBRATION_TIMEOUT ;
 int IS_ADC_ALL_PERIPH (TYPE_1__*) ;
 scalar_t__ RESET ;
 int assert_param (int ) ;

uint32_t ADC_GetCalibrationFactor(ADC_TypeDef* ADCx)
{
  uint32_t tmpreg = 0, calibrationcounter = 0, calibrationstatus = 0;


  assert_param(IS_ADC_ALL_PERIPH(ADCx));


  ADCx->CR |= (uint32_t)ADC_CR_ADCAL;


  do
  {
    calibrationstatus = ADCx->CR & ADC_CR_ADCAL;
    calibrationcounter++;
  } while((calibrationcounter != CALIBRATION_TIMEOUT) && (calibrationstatus != 0x00));

  if((uint32_t)(ADCx->CR & ADC_CR_ADCAL) == RESET)
  {

    tmpreg = ADCx->DR;
  }
  else
  {

    tmpreg = 0x00000000;
  }
  return tmpreg;
}
