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
 int /*<<< orphan*/  DIG_DBIAS_240M ; 
 int /*<<< orphan*/  DIG_DBIAS_80M_160M ; 
 int /*<<< orphan*/  DPORT_CPU_PER_CONF_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 scalar_t__ RTC_CPU_320M_160M ; 
 scalar_t__ RTC_CPU_320M_80M ; 
 scalar_t__ RTC_CPU_FREQ_160M ; 
 scalar_t__ RTC_CPU_FREQ_240M ; 
 scalar_t__ RTC_CPU_FREQ_80M ; 
 scalar_t__ RTC_PLL_320M ; 
 scalar_t__ RTC_PLL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ s_cur_freq ; 
 scalar_t__ s_cur_pll ; 

__attribute__((used)) static void FUNC5(rtc_cpu_freq_t cpu_freq)
{
    int freq = 0;
    if ((s_cur_pll == RTC_PLL_NONE) || ((s_cur_pll == RTC_PLL_320M) && (cpu_freq == RTC_CPU_FREQ_240M))) {
        /*
         * if switch from non-pll or switch from PLL 320M to 480M
         * need to switch PLLs, fall back to full implementation
         */
        FUNC4(cpu_freq);
        return;
    }

    if ((cpu_freq == RTC_CPU_FREQ_80M) || (cpu_freq == RTC_CPU_320M_80M)) {
        FUNC1(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
        FUNC0(DPORT_CPU_PER_CONF_REG, 0);
        freq = 80;
    } else if ((cpu_freq == RTC_CPU_FREQ_160M) || (cpu_freq == RTC_CPU_320M_160M)) {
        FUNC1(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
        FUNC0(DPORT_CPU_PER_CONF_REG, 1);
        freq = 160;
    } else if (cpu_freq == RTC_CPU_FREQ_240M) {
        FUNC1(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_240M);
        FUNC0(DPORT_CPU_PER_CONF_REG, 2);
        freq = 240;
    }
    // REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL, SYSCON_SOC_CLK_SEL_PLL);
    FUNC3(80 * MHZ);
    FUNC2(freq);
    s_cur_freq = cpu_freq;
}