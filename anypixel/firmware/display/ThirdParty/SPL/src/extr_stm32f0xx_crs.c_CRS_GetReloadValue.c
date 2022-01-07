
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 TYPE_1__* CRS ;
 int CRS_CFGR_RELOAD ;

uint32_t CRS_GetReloadValue(void)
{
  return ((uint32_t)(CRS->CFGR & CRS_CFGR_RELOAD));
}
