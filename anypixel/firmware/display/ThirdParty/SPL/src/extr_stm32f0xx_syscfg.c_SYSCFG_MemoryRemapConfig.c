
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ CFGR1; } ;


 int IS_SYSCFG_MEMORY_REMAP (scalar_t__) ;
 TYPE_1__* SYSCFG ;
 scalar_t__ SYSCFG_CFGR1_MEM_MODE ;
 int assert_param (int ) ;

void SYSCFG_MemoryRemapConfig(uint32_t SYSCFG_MemoryRemap)
{
  uint32_t tmpctrl = 0;


  assert_param(IS_SYSCFG_MEMORY_REMAP(SYSCFG_MemoryRemap));


  tmpctrl = SYSCFG->CFGR1;


  tmpctrl &= (uint32_t) (~SYSCFG_CFGR1_MEM_MODE);


  tmpctrl |= (uint32_t) SYSCFG_MemoryRemap;


  SYSCFG->CFGR1 = tmpctrl;
}
