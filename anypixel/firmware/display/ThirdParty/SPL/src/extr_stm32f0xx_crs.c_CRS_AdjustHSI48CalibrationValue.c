
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;


 TYPE_1__* CRS ;
 int CRS_CR_TRIM ;

void CRS_AdjustHSI48CalibrationValue(uint8_t CRS_HSI48CalibrationValue)
{

  CRS->CR &= ~CRS_CR_TRIM;


  CRS->CR |= (uint32_t)((uint32_t)CRS_HSI48CalibrationValue << 8);

}
