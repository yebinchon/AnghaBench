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
typedef  scalar_t__ rtc_cpu_freq_t ;

/* Variables and functions */
 scalar_t__ RTC_CPU_FREQ_2M ; 
 scalar_t__ RTC_CPU_FREQ_XTAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ s_cur_freq ; 

void FUNC3(rtc_cpu_freq_t cpu_freq)
{
    if (cpu_freq == s_cur_freq) {
        return;
    } else if (cpu_freq == RTC_CPU_FREQ_2M || s_cur_freq == RTC_CPU_FREQ_2M) {
        /* fall back to full implementation if switch to/from 2M is needed */
        FUNC0(cpu_freq);
    } else if (cpu_freq == RTC_CPU_FREQ_XTAL) {
        FUNC2();
    } else if (cpu_freq > RTC_CPU_FREQ_XTAL) {
        FUNC1(cpu_freq);
        /* Not neccessary any more */
        //rtc_clk_wait_for_slow_cycle();
    }
}