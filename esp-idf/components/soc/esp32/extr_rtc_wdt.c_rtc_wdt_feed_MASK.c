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
 int /*<<< orphan*/  RTC_CNTL_WDTFEED_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_FEED ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
    bool protect = FUNC1();
    if (protect) {
        FUNC2();
    }
    FUNC0(RTC_CNTL_WDTFEED_REG, RTC_CNTL_WDT_FEED);
    if (protect) {
        FUNC3();
    }
}