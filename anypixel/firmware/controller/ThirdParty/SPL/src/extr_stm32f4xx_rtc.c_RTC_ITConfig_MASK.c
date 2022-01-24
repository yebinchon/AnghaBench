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
struct TYPE_2__ {int WPR; int CR; int TAFCR; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* RTC ; 
 int RTC_TAFCR_TAMPIE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t RTC_IT, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC1(RTC_IT));
  FUNC2(FUNC0(NewState));

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  if (NewState != DISABLE)
  {
    /* Configure the Interrupts in the RTC_CR register */
    RTC->CR |= (uint32_t)(RTC_IT & ~RTC_TAFCR_TAMPIE);
    /* Configure the Tamper Interrupt in the RTC_TAFCR */
    RTC->TAFCR |= (uint32_t)(RTC_IT & RTC_TAFCR_TAMPIE);
  }
  else
  {
    /* Configure the Interrupts in the RTC_CR register */
    RTC->CR &= (uint32_t)~(RTC_IT & (uint32_t)~RTC_TAFCR_TAMPIE);
    /* Configure the Tamper Interrupt in the RTC_TAFCR */
    RTC->TAFCR &= (uint32_t)~(RTC_IT & RTC_TAFCR_TAMPIE);
  }
  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF; 
}