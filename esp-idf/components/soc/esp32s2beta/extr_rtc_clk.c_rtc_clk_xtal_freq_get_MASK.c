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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  rtc_xtal_freq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_XTAL_FREQ_AUTO ; 
 int /*<<< orphan*/  RTC_XTAL_FREQ_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

rtc_xtal_freq_t FUNC4(void)
{
    /* We may have already written XTAL value into RTC_XTAL_FREQ_REG */
    uint32_t xtal_freq_reg = FUNC0(RTC_XTAL_FREQ_REG);
    if (!FUNC2(xtal_freq_reg)) {
        FUNC1(TAG, "invalid RTC_XTAL_FREQ_REG value: 0x%08x", xtal_freq_reg);
        return RTC_XTAL_FREQ_AUTO;
    }
    return FUNC3(xtal_freq_reg);
}