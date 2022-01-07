
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 TYPE_1__* CRS ;
 int CRS_CFGR_SYNCPOL ;
 int IS_CRS_SYNC_POLARITY (int ) ;
 int assert_param (int ) ;

void CRS_SynchronizationPolarityConfig(uint32_t CRS_Polarity)
{

  assert_param(IS_CRS_SYNC_POLARITY(CRS_Polarity));


  CRS->CFGR &= ~CRS_CFGR_SYNCPOL;


  CRS->CFGR |= CRS_Polarity;
}
