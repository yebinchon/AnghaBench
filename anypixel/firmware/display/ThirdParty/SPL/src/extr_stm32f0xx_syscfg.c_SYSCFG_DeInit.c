
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int CFGR2; scalar_t__* EXTICR; int CFGR1; } ;


 TYPE_1__* SYSCFG ;
 int SYSCFG_CFGR1_MEM_MODE ;
 scalar_t__ SYSCFG_CFGR2_SRAM_PE ;

void SYSCFG_DeInit(void)
{

  SYSCFG->CFGR1 &= SYSCFG_CFGR1_MEM_MODE;

  SYSCFG->EXTICR[0] = 0;
  SYSCFG->EXTICR[1] = 0;
  SYSCFG->EXTICR[2] = 0;
  SYSCFG->EXTICR[3] = 0;

  SYSCFG->CFGR2 |= (uint32_t) SYSCFG_CFGR2_SRAM_PE;
}
