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
struct TYPE_2__ {int TAFCR; int CR; int ISR; } ;
typedef  scalar_t__ ITStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RESET ; 
 TYPE_1__* RTC ; 
 int RTC_TAFCR_TAMPIE ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

ITStatus FUNC2(uint32_t RTC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t tmpreg = 0, enablestatus = 0;
 
  /* Check the parameters */
  FUNC1(FUNC0(RTC_IT));
  
  /* Get the TAMPER Interrupt enable bit and pending bit */
  tmpreg = (uint32_t)(RTC->TAFCR & (RTC_TAFCR_TAMPIE));
 
  /* Get the Interrupt enable Status */
  enablestatus = (uint32_t)((RTC->CR & RTC_IT) | (tmpreg & (RTC_IT >> 15)));
  
  /* Get the Interrupt pending bit */
  tmpreg = (uint32_t)((RTC->ISR & (uint32_t)(RTC_IT >> 4)));
  
  /* Get the status of the Interrupt */
  if ((enablestatus != (uint32_t)RESET) && ((tmpreg & 0x0000FFFF) != (uint32_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}