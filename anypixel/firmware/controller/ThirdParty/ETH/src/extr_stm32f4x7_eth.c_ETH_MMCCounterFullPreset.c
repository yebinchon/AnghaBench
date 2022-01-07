
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MMCCR; } ;


 TYPE_1__* ETH ;
 int ETH_MMCCR_MCFHP ;
 int ETH_MMCCR_MCP ;

void ETH_MMCCounterFullPreset(void)
{

  ETH->MMCCR |= ETH_MMCCR_MCFHP | ETH_MMCCR_MCP;
}
