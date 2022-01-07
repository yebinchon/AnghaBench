
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;


 int IS_RCC_HSI_CALIBRATION_VALUE (scalar_t__) ;
 TYPE_1__* RCC ;
 int RCC_CR_HSITRIM ;
 int assert_param (int ) ;

void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_HSI_CALIBRATION_VALUE(HSICalibrationValue));

  tmpreg = RCC->CR;


  tmpreg &= ~RCC_CR_HSITRIM;


  tmpreg |= (uint32_t)HSICalibrationValue << 3;


  RCC->CR = tmpreg;
}
