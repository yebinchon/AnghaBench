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
struct TYPE_2__ {int ISR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* RTC ; 
 int RTC_ISR_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint32_t RTC_IT)
{
  uint32_t tmpreg = 0;

  /* Check the parameters */
  FUNC1(FUNC0(RTC_IT));

  /* Get the RTC_ISR Interrupt pending bits mask */
  tmpreg = (uint32_t)(RTC_IT >> 4);

  /* Clear the interrupt pending bits in the RTC_ISR register */
  RTC->ISR = (uint32_t)((uint32_t)(~((tmpreg | RTC_ISR_INIT)& 0x0000FFFF) | (uint32_t)(RTC->ISR & RTC_ISR_INIT))); 
}