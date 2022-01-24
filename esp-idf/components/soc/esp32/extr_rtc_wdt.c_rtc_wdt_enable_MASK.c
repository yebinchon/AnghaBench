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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTFEED_REG ; 
 int RTC_CNTL_WDT_EN ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_FEED ; 
 int RTC_CNTL_WDT_PAUSE_IN_SLP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
    FUNC0(RTC_CNTL_WDTFEED_REG, RTC_CNTL_WDT_FEED);
    FUNC1(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_EN | RTC_CNTL_WDT_PAUSE_IN_SLP);
}