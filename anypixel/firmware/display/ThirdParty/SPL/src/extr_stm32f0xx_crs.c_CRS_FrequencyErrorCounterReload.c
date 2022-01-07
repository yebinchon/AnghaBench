
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CFGR; } ;


 TYPE_1__* CRS ;
 scalar_t__ CRS_CFGR_RELOAD ;

void CRS_FrequencyErrorCounterReload(uint32_t CRS_ReloadValue)
{


  CRS->CFGR &= ~CRS_CFGR_RELOAD;


  CRS->CFGR |= (uint32_t)CRS_ReloadValue;

}
