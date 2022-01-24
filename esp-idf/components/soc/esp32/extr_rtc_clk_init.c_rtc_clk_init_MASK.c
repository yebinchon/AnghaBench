#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int rtc_xtal_freq_t ;
struct TYPE_7__ {int freq_mhz; } ;
typedef  TYPE_1__ rtc_cpu_freq_config_t ;
struct TYPE_8__ {int xtal_freq; int cpu_freq_mhz; scalar_t__ slow_freq; scalar_t__ fast_freq; int /*<<< orphan*/  clk_8m_div; int /*<<< orphan*/  clk_8m_dfreq; int /*<<< orphan*/  slow_clk_dcap; } ;
typedef  TYPE_2__ rtc_clk_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_CONFIG_M ; 
 int /*<<< orphan*/  ANA_CONFIG_REG ; 
 int /*<<< orphan*/  ANA_CONFIG_S ; 
 int APB_CLK_FREQ ; 
 int /*<<< orphan*/  APB_CTRL_PLL_TICK_CONF_REG ; 
 int /*<<< orphan*/  APB_CTRL_XTAL_TICK_CONF_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int I2C_APLL_M ; 
 int I2C_BBPLL_M ; 
 int MHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_DFREQ ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_DIV_SEL ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SCK_DCAP ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL ; 
 scalar_t__ RTC_CNTL_SOC_CLK_SEL_PLL ; 
 scalar_t__ RTC_FAST_FREQ_8M ; 
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ; 
 scalar_t__ RTC_SLOW_FREQ_8MD256 ; 
 int RTC_XTAL_FREQ_26M ; 
 int RTC_XTAL_FREQ_AUTO ; 
 int /*<<< orphan*/  RTC_XTAL_FREQ_REG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int FUNC21 () ; 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

void FUNC25(rtc_clk_config_t cfg)
{
    rtc_cpu_freq_config_t old_config, new_config;

    /* If we get a TG WDT system reset while running at 240MHz,
     * DPORT_CPUPERIOD_SEL register will be reset to 0 resulting in 120MHz
     * APB and CPU frequencies after reset. This will cause issues with XTAL
     * frequency estimation, so we switch to XTAL frequency first.
     *
     * Ideally we would only do this if RTC_CNTL_SOC_CLK_SEL == PLL and
     * PLL is configured for 480M, but it takes less time to switch to 40M and
     * run the following code than querying the PLL does.
     */
    if (FUNC2(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL) == RTC_CNTL_SOC_CLK_SEL_PLL) {
        /* We don't know actual XTAL frequency yet, assume 40MHz.
         * REF_TICK divider will be corrected below, once XTAL frequency is
         * determined.
         */
        FUNC18(40, 1);
    }

    /* Set tuning parameters for 8M and 150k clocks.
     * Note: this doesn't attempt to set the clocks to precise frequencies.
     * Instead, we calibrate these clocks against XTAL frequency later, when necessary.
     * - SCK_DCAP value controls tuning of 150k clock.
     *   The higher the value of DCAP is, the lower is the frequency.
     * - CK8M_DFREQ value controls tuning of 8M clock.
     *   CLK_8M_DFREQ constant gives the best temperature characteristics.
     */
    FUNC3(RTC_CNTL_REG, RTC_CNTL_SCK_DCAP, cfg.slow_clk_dcap);
    FUNC3(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DFREQ, cfg.clk_8m_dfreq);

    /* Configure 8M clock division */
    FUNC3(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_CK8M_DIV_SEL, cfg.clk_8m_div);

    /* Enable the internal bus used to configure PLLs */
    FUNC5(ANA_CONFIG_REG, ANA_CONFIG_M, ANA_CONFIG_M, ANA_CONFIG_S);
    FUNC0(ANA_CONFIG_REG, I2C_APLL_M | I2C_BBPLL_M);

    /* Estimate XTAL frequency */
    rtc_xtal_freq_t xtal_freq = cfg.xtal_freq;
    if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
        if (FUNC11(FUNC1(RTC_XTAL_FREQ_REG))) {
            /* XTAL frequency has already been set, use existing value */
            xtal_freq = FUNC22();
        } else {
            /* Not set yet, estimate XTAL frequency based on RTC_FAST_CLK */
            xtal_freq = FUNC21();
            if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
                FUNC7(TAG, "Can't estimate XTAL frequency, assuming 26MHz");
                xtal_freq = RTC_XTAL_FREQ_26M;
            }
        }
    } else if (!FUNC11(FUNC1(RTC_XTAL_FREQ_REG))) {
        /* Exact frequency was set in sdkconfig, but still warn if autodetected
         * frequency is different. If autodetection failed, worst case we get a
         * bit of garbage output.
         */

        rtc_xtal_freq_t est_xtal_freq = FUNC21();
        if (est_xtal_freq != xtal_freq) {
            FUNC7(TAG, "Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.",
                    xtal_freq, est_xtal_freq);
        }
    }
    FUNC24(0);
    FUNC23(xtal_freq);
    FUNC14(xtal_freq * MHZ);

    /* Set CPU frequency */

    FUNC15(&old_config);
    uint32_t freq_before = old_config.freq_mhz;

    bool res = FUNC16(cfg.cpu_freq_mhz, &new_config);
    if (!res) {
        FUNC6(TAG, "invalid CPU frequency value");
        FUNC10();
    }
    FUNC17(&new_config);

    /* Configure REF_TICK */
    FUNC4(APB_CTRL_XTAL_TICK_CONF_REG, xtal_freq - 1);
    FUNC4(APB_CTRL_PLL_TICK_CONF_REG, APB_CLK_FREQ / MHZ - 1); /* Under PLL, APB frequency is always 80MHz */

    /* Re-calculate the ccount to make time calculation correct. */
    FUNC9( (uint64_t)FUNC8() * cfg.cpu_freq_mhz / freq_before );

    /* Slow & fast clocks setup */
    if (cfg.slow_freq == RTC_SLOW_FREQ_32K_XTAL) {
        FUNC12(true);
    }
    if (cfg.fast_freq == RTC_FAST_FREQ_8M) {
        bool need_8md256 = cfg.slow_freq == RTC_SLOW_FREQ_8MD256;
        FUNC13(true, need_8md256);
    }
    FUNC19(cfg.fast_freq);
    FUNC20(cfg.slow_freq);
}