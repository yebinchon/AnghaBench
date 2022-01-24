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
typedef  int uint32_t ;
typedef  scalar_t__ rtc_xtal_freq_t ;
typedef  int /*<<< orphan*/  rtc_cal_sel_t ;

/* Variables and functions */
 int RTC_CLK_CAL_FRACT ; 
 int UINT32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 

uint32_t FUNC2(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{
    rtc_xtal_freq_t xtal_freq = FUNC1();
    uint64_t xtal_cycles = FUNC0(cal_clk, slowclk_cycles);
    uint64_t divider = ((uint64_t)xtal_freq) * slowclk_cycles;
    uint64_t period_64 = ((xtal_cycles << RTC_CLK_CAL_FRACT) + divider / 2 - 1) / divider;
    uint32_t period = (uint32_t)(period_64 & UINT32_MAX);
    return period;
}