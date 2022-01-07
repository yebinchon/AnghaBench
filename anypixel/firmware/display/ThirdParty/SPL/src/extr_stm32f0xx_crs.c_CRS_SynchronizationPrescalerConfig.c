
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR; } ;


 TYPE_1__* CRS ;
 int CRS_CFGR_SYNCDIV ;
 int IS_CRS_SYNC_DIV (int ) ;
 int assert_param (int ) ;

void CRS_SynchronizationPrescalerConfig(uint32_t CRS_Prescaler)
{

  assert_param(IS_CRS_SYNC_DIV(CRS_Prescaler));


  CRS->CFGR &= ~CRS_CFGR_SYNCDIV;


  CRS->CFGR |= CRS_Prescaler;
}
