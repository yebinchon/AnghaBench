#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int HCLK_Frequency; } ;
typedef  TYPE_1__ RCC_ClocksTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  BOARD_PHY_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ETH_LINK_FLAG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EthStatus ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_SR ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SysTick_CLKSource_HCLK ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  SysTick_IRQn ; 

void FUNC9(void)
{
  RCC_ClocksTypeDef RCC_Clocks;

  /***************************************************************************
    NOTE:
         When using Systick to manage the delay in Ethernet driver, the Systick
         must be configured before Ethernet initialization and, the interrupt
         priority should be the highest one.
  *****************************************************************************/

  /* Configure Systick clock source as HCLK */
  FUNC7(SysTick_CLKSource_HCLK);

  /* SystTick configuration: an interrupt every 10ms */
  FUNC6(&RCC_Clocks);
  FUNC8(RCC_Clocks.HCLK_Frequency / 1000);

  /* Set Systick interrupt priority to 0*/
  FUNC5 (SysTick_IRQn, 0);

  /* Configure the GPIO ports for ethernet pins */
  FUNC0();

  /* Configure the Ethernet MAC/DMA */
  FUNC1();

  /* Get Ethernet link status*/
  if(FUNC2(BOARD_PHY_ADDRESS, PHY_SR) & 1)
  {
    EthStatus |= ETH_LINK_FLAG;
  }

  /* Configure the PHY to generate an interrupt on change of link status */
  FUNC4(BOARD_PHY_ADDRESS);

  /* Configure the EXTI for Ethernet link status. */
  FUNC3();
}