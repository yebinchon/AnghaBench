#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int MMCRIMR; int MMCTIMR; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 TYPE_1__* ETH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ RESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t ETH_MMC_IT, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC0(ETH_MMC_IT));
  FUNC2(FUNC1(NewState));

  if ((ETH_MMC_IT & (uint32_t)0x10000000) != (uint32_t)RESET)
  {
    /* Remove Register mak from IT */
    ETH_MMC_IT &= 0xEFFFFFFF;

    /* ETHERNET MMC Rx interrupts selected */
    if (NewState != DISABLE)
    {
      /* Enable the selected ETHERNET MMC interrupts */
      ETH->MMCRIMR &=(~(uint32_t)ETH_MMC_IT);
    }
    else
    {
      /* Disable the selected ETHERNET MMC interrupts */
      ETH->MMCRIMR |= ETH_MMC_IT;
    }
  }
  else
  {
    /* ETHERNET MMC Tx interrupts selected */
    if (NewState != DISABLE)
    {
      /* Enable the selected ETHERNET MMC interrupts */
      ETH->MMCTIMR &=(~(uint32_t)ETH_MMC_IT);
    }
    else
    {
      /* Disable the selected ETHERNET MMC interrupts */
      ETH->MMCTIMR |= ETH_MMC_IT;
    }
  }
}