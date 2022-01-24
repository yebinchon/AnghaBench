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
typedef  int uint32_t ;
typedef  int const rtc_cpu_freq_t ;

/* Variables and functions */
 int /*<<< orphan*/  DPORT_CPUPERIOD_SEL ; 
 int /*<<< orphan*/  DPORT_CPU_PER_CONF_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int const RTC_CPU_FREQ_160M ; 
 int const RTC_CPU_FREQ_240M ; 
 int const RTC_CPU_FREQ_2M ; 
 int const RTC_CPU_FREQ_80M ; 
 int const RTC_CPU_FREQ_XTAL ; 
 int /*<<< orphan*/  SYSCON_PRE_DIV_CNT ; 
 int /*<<< orphan*/  SYSCON_SOC_CLK_SEL ; 
#define  SYSCON_SOC_CLK_SEL_8M 131 
#define  SYSCON_SOC_CLK_SEL_APLL 130 
#define  SYSCON_SOC_CLK_SEL_PLL 129 
#define  SYSCON_SOC_CLK_SEL_XTL 128 
 int /*<<< orphan*/  SYSCON_SYSCLK_CONF_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 

rtc_cpu_freq_t FUNC4(void)
{
    uint32_t soc_clk_sel = FUNC1(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL);
    switch (soc_clk_sel) {
        case SYSCON_SOC_CLK_SEL_XTL: {
            uint32_t pre_div = FUNC1(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT);
            if (pre_div == 0) {
                return RTC_CPU_FREQ_XTAL;
            } else if (pre_div == FUNC3() / 2 - 1) {
                return RTC_CPU_FREQ_2M;
            } else {
                FUNC2(false && "unsupported frequency");
            }
            break;
        }
        case SYSCON_SOC_CLK_SEL_PLL: {
            uint32_t cpuperiod_sel = FUNC0(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL);
            if (cpuperiod_sel == 0) {
                return RTC_CPU_FREQ_80M;
            } else if (cpuperiod_sel == 1) {
                return RTC_CPU_FREQ_160M;
            } else if (cpuperiod_sel == 2) {
                return RTC_CPU_FREQ_240M;
            } else {
                FUNC2(false && "unsupported frequency");
            }
            break;
        }
        case SYSCON_SOC_CLK_SEL_APLL:
        case SYSCON_SOC_CLK_SEL_8M:
        default:
            FUNC2(false && "unsupported frequency");
    }
    return SYSCON_SOC_CLK_SEL_XTL;
}