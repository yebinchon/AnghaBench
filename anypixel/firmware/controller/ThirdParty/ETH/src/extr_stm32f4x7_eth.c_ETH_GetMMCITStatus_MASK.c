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
struct TYPE_2__ {int MMCRIR; int MMCRIMR; int MMCTIR; } ;
typedef  scalar_t__ ITStatus ;

/* Variables and functions */
 TYPE_1__* ETH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ITStatus FUNC2(uint32_t ETH_MMC_IT)
{
  ITStatus bitstatus = RESET;
  /* Check the parameters */
  FUNC1(FUNC0(ETH_MMC_IT));

  if ((ETH_MMC_IT & (uint32_t)0x10000000) != (uint32_t)RESET)
  {
    /* ETHERNET MMC Rx interrupts selected */
    /* Check if the ETHERNET MMC Rx selected interrupt is enabled and occurred */
    if ((((ETH->MMCRIR & ETH_MMC_IT) != (uint32_t)RESET)) && ((ETH->MMCRIMR & ETH_MMC_IT) == (uint32_t)RESET))
    {
      bitstatus = SET;
    }
    else
    {
      bitstatus = RESET;
    }
  }
  else
  {
    /* ETHERNET MMC Tx interrupts selected */
    /* Check if the ETHERNET MMC Tx selected interrupt is enabled and occurred */
    if ((((ETH->MMCTIR & ETH_MMC_IT) != (uint32_t)RESET)) && ((ETH->MMCRIMR & ETH_MMC_IT) == (uint32_t)RESET))
    {
      bitstatus = SET;
    }
    else
    {
      bitstatus = RESET;
    }
  }

  return bitstatus;
}