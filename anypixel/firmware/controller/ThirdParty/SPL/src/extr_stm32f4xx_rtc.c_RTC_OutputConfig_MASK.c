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
struct TYPE_2__ {int WPR; int CR; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* RTC ; 
 int RTC_CR_OSEL ; 
 int RTC_CR_POL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t RTC_Output, uint32_t RTC_OutputPolarity)
{
  /* Check the parameters */
  FUNC2(FUNC0(RTC_Output));
  FUNC2(FUNC1(RTC_OutputPolarity));

  /* Disable the write protection for RTC registers */
  RTC->WPR = 0xCA;
  RTC->WPR = 0x53;

  /* Clear the bits to be configured */
  RTC->CR &= (uint32_t)~(RTC_CR_OSEL | RTC_CR_POL);

  /* Configure the output selection and polarity */
  RTC->CR |= (uint32_t)(RTC_Output | RTC_OutputPolarity);

  /* Enable the write protection for RTC registers */
  RTC->WPR = 0xFF; 
}