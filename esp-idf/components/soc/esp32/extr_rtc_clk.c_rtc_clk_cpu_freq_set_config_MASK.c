#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  rtc_xtal_freq_t ;
struct TYPE_3__ {scalar_t__ source; int div; int /*<<< orphan*/  freq_mhz; int /*<<< orphan*/  source_freq_mhz; } ;
typedef  TYPE_1__ rtc_cpu_freq_config_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL ; 
 scalar_t__ RTC_CNTL_SOC_CLK_SEL_PLL ; 
 scalar_t__ RTC_CNTL_SOC_CLK_SEL_XTL ; 
 scalar_t__ RTC_CPU_FREQ_SRC_8M ; 
 scalar_t__ RTC_CPU_FREQ_SRC_PLL ; 
 scalar_t__ RTC_CPU_FREQ_SRC_XTAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(const rtc_cpu_freq_config_t* config)
{
    rtc_xtal_freq_t xtal_freq = FUNC8();
    uint32_t soc_clk_sel = FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL);
    if (soc_clk_sel != RTC_CNTL_SOC_CLK_SEL_XTL) {
        FUNC6(xtal_freq, 1);
        FUNC7();
    }
    if (soc_clk_sel == RTC_CNTL_SOC_CLK_SEL_PLL) {
        FUNC2();
    }
    if (config->source == RTC_CPU_FREQ_SRC_XTAL) {
        if (config->div > 1) {
            FUNC6(config->freq_mhz, config->div);
        }
    } else if (config->source == RTC_CPU_FREQ_SRC_PLL) {
        FUNC3();
        FUNC7();
        FUNC1(FUNC8(), config->source_freq_mhz);
        FUNC5(config->freq_mhz);
    } else if (config->source == RTC_CPU_FREQ_SRC_8M) {
        FUNC4();
    }
}