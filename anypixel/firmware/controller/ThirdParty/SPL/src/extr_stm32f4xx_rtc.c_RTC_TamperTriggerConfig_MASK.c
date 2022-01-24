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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ TAFCR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* RTC ; 
 scalar_t__ RTC_TamperTrigger_RisingEdge ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t RTC_Tamper, uint32_t RTC_TamperTrigger)
{
  /* Check the parameters */
  FUNC2(FUNC0(RTC_Tamper)); 
  FUNC2(FUNC1(RTC_TamperTrigger));
 
  if (RTC_TamperTrigger == RTC_TamperTrigger_RisingEdge)
  {  
    /* Configure the RTC_TAFCR register */
    RTC->TAFCR &= (uint32_t)((uint32_t)~(RTC_Tamper << 1));	
  }
  else
  { 
    /* Configure the RTC_TAFCR register */
    RTC->TAFCR |= (uint32_t)(RTC_Tamper << 1);  
  }  
}