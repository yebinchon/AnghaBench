
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CR; } ;


 TYPE_1__* CRS ;
 int CRS_CR_TRIM ;

uint32_t CRS_GetHSI48CalibrationValue(void)
{
  return (((uint32_t)(CRS->CR & CRS_CR_TRIM)) >> 8);
}
