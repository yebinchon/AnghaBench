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
typedef  int uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_INT_CLR_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME1_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_UPDATE ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_UPDATE_REG ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_VALID ; 
 int /*<<< orphan*/  RTC_CNTL_TIME_VALID_INT_CLR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

uint64_t FUNC4(void)
{
    FUNC2(RTC_CNTL_TIME_UPDATE_REG, RTC_CNTL_TIME_UPDATE);
    while (FUNC0(RTC_CNTL_TIME_UPDATE_REG, RTC_CNTL_TIME_VALID) == 0) {
        FUNC3(1); // might take 1 RTC slowclk period, don't flood RTC bus
    }
    FUNC2(RTC_CNTL_INT_CLR_REG, RTC_CNTL_TIME_VALID_INT_CLR);
    uint64_t t = FUNC1(RTC_CNTL_TIME0_REG);
    t |= ((uint64_t) FUNC1(RTC_CNTL_TIME1_REG)) << 32;
    return t;
}