
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR2; } ;
typedef scalar_t__ FlagStatus ;


 int IS_SYSCFG_FLAG (int) ;
 scalar_t__ RESET ;
 scalar_t__ SET ;
 TYPE_1__* SYSCFG ;
 int SYSCFG_CFGR2_SRAM_PE ;
 int assert_param (int ) ;

FlagStatus SYSCFG_GetFlagStatus(uint32_t SYSCFG_Flag)
{
  FlagStatus bitstatus = RESET;


  assert_param(IS_SYSCFG_FLAG(SYSCFG_Flag));


  if ((SYSCFG->CFGR2 & SYSCFG_CFGR2_SRAM_PE) != (uint32_t)RESET)
  {

    bitstatus = SET;
  }
  else
  {

    bitstatus = RESET;
  }

  return bitstatus;
}
