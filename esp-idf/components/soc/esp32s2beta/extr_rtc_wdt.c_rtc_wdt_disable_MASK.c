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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTFEED_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_EN ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_FEED ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_FLASHBOOT_MOD_EN ; 
 int /*<<< orphan*/  RTC_WDT_STAGE0 ; 
 int /*<<< orphan*/  RTC_WDT_STAGE1 ; 
 int /*<<< orphan*/  RTC_WDT_STAGE2 ; 
 int /*<<< orphan*/  RTC_WDT_STAGE3 ; 
 int /*<<< orphan*/  RTC_WDT_STAGE_ACTION_OFF ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
    bool protect = FUNC2();
    if (protect) {
        FUNC3();
    }
    FUNC1(RTC_CNTL_WDTFEED_REG, RTC_CNTL_WDT_FEED);
    FUNC5(RTC_WDT_STAGE0, RTC_WDT_STAGE_ACTION_OFF);
    FUNC5(RTC_WDT_STAGE1, RTC_WDT_STAGE_ACTION_OFF);
    FUNC5(RTC_WDT_STAGE2, RTC_WDT_STAGE_ACTION_OFF);
    FUNC5(RTC_WDT_STAGE3, RTC_WDT_STAGE_ACTION_OFF);
    FUNC0(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_FLASHBOOT_MOD_EN);
    FUNC0(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_EN);
    if (protect) {
        FUNC4();
    }
}