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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTCONFIG1_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDTWPROTECT_REG ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_FLASHBOOT_MOD_EN ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_STG0 ; 
 int /*<<< orphan*/  RTC_CNTL_WDT_SYS_RESET_LENGTH ; 
 int RTC_CNTL_WDT_WKEY_VALUE ; 
 int RTC_WDT_STG_SEL_RESET_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC3();
    FUNC2(RTC_CNTL_WDTWPROTECT_REG, RTC_CNTL_WDT_WKEY_VALUE);
    FUNC1(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_SYS_RESET_LENGTH, 7);
    FUNC1(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_STG0, RTC_WDT_STG_SEL_RESET_SYSTEM);
    FUNC2(RTC_CNTL_WDTCONFIG1_REG, 10000);
    FUNC0(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_FLASHBOOT_MOD_EN);
    while(1);
}