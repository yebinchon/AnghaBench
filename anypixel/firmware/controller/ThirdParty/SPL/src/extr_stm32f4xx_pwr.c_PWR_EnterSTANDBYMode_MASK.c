#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  CR; } ;
struct TYPE_3__ {int /*<<< orphan*/  SCR; } ;

/* Variables and functions */
 TYPE_2__* PWR ; 
 int /*<<< orphan*/  PWR_CR_CWUF ; 
 int /*<<< orphan*/  PWR_CR_PDDS ; 
 TYPE_1__* SCB ; 
 int /*<<< orphan*/  SCB_SCR_SLEEPDEEP_Msk ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(void)
{
  /* Clear Wakeup flag */
  PWR->CR |= PWR_CR_CWUF;
  
  /* Select STANDBY mode */
  PWR->CR |= PWR_CR_PDDS;
  
  /* Set SLEEPDEEP bit of Cortex System Control Register */
  SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
  
/* This option is used to ensure that store operations are completed */
#if defined ( __CC_ARM   )
  __force_stores();
#endif
  /* Request Wait For Interrupt */
  FUNC0();
}