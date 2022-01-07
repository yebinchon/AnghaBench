
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 TYPE_1__* CRS ;
 int CRS_CFGR_FELIM ;

void CRS_FrequencyErrorLimitConfig(uint8_t CRS_ErrorLimitValue)
{

  CRS->CFGR &= ~CRS_CFGR_FELIM;


  CRS->CFGR |= (uint32_t)CRS_ErrorLimitValue;
}
