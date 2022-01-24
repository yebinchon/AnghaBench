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
 int DIG_DBIAS_240M ; 
 int DIG_DBIAS_80M_160M ; 
 int DPORT_CPUPERIOD_SEL_160 ; 
 int DPORT_CPUPERIOD_SEL_240 ; 
 int DPORT_CPUPERIOD_SEL_80 ; 
 int /*<<< orphan*/  DPORT_CPU_PER_CONF_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL ; 
 int RTC_CNTL_SOC_CLK_SEL_PLL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(int cpu_freq_mhz)
{
    int dbias = DIG_DBIAS_80M_160M;
    int per_conf = DPORT_CPUPERIOD_SEL_80;
    if (cpu_freq_mhz == 80) {
        /* nothing to do */
    } else if (cpu_freq_mhz == 160) {
        per_conf = DPORT_CPUPERIOD_SEL_160;
    } else if (cpu_freq_mhz == 240) {
        dbias = DIG_DBIAS_240M;
        per_conf = DPORT_CPUPERIOD_SEL_240;
    } else {
        FUNC2(TAG, "invalid frequency");
        FUNC3();
    }
    FUNC0(DPORT_CPU_PER_CONF_REG, per_conf);
    FUNC1(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, dbias);
    FUNC1(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL, RTC_CNTL_SOC_CLK_SEL_PLL);
    FUNC5(80 * MHZ);
    FUNC4(cpu_freq_mhz);
    FUNC6();
}