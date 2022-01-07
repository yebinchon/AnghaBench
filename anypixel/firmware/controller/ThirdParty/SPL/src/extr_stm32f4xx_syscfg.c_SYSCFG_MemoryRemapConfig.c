
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int MEMRMP; } ;


 int IS_SYSCFG_MEMORY_REMAP_CONFING (int ) ;
 TYPE_1__* SYSCFG ;
 int assert_param (int ) ;

void SYSCFG_MemoryRemapConfig(uint8_t SYSCFG_MemoryRemap)
{

  assert_param(IS_SYSCFG_MEMORY_REMAP_CONFING(SYSCFG_MemoryRemap));

  SYSCFG->MEMRMP = SYSCFG_MemoryRemap;
}
