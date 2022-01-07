
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CR2; } ;


 int IS_RCC_HSI14_CALIBRATION_VALUE (scalar_t__) ;
 TYPE_1__* RCC ;
 int RCC_CR2_HSI14TRIM ;
 int assert_param (int ) ;

void RCC_AdjustHSI14CalibrationValue(uint8_t HSI14CalibrationValue)
{
  uint32_t tmpreg = 0;


  assert_param(IS_RCC_HSI14_CALIBRATION_VALUE(HSI14CalibrationValue));

  tmpreg = RCC->CR2;


  tmpreg &= ~RCC_CR2_HSI14TRIM;


  tmpreg |= (uint32_t)HSI14CalibrationValue << 3;


  RCC->CR2 = tmpreg;
}
