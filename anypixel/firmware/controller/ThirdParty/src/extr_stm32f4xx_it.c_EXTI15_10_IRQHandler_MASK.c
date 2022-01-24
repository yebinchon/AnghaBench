#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  BOARD_PHY_ADDRESS ; 
 int /*<<< orphan*/  ETH_LINK_EXTI_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RESET ; 

void FUNC3(void)
{
  if(FUNC1(ETH_LINK_EXTI_LINE) != RESET)
  {
    FUNC2(BOARD_PHY_ADDRESS);
    /* Clear interrupt pending bit */
    FUNC0(ETH_LINK_EXTI_LINE);
  }
}