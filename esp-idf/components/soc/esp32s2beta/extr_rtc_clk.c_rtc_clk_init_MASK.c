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
typedef  int uint32_t ;
typedef  int rtc_xtal_freq_t ;
typedef  int /*<<< orphan*/  rtc_cpu_freq_t ;
struct TYPE_3__ {int xtal_freq; scalar_t__ slow_freq; scalar_t__ fast_freq; int /*<<< orphan*/  cpu_freq; int /*<<< orphan*/  clk_8m_clk_div; int /*<<< orphan*/  clk_rtc_clk_div; int /*<<< orphan*/  clk_8m_dfreq; int /*<<< orphan*/  slow_clk_dcap; } ;
typedef  TYPE_1__ rtc_clk_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_CONFIG_M ; 
 int /*<<< orphan*/  ANA_CONFIG_REG ; 
 int /*<<< orphan*/  ANA_CONFIG_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int I2C_APLL_M ; 
 int I2C_BBPLL_M ; 
 int MHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_CK8M_DFREQ ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int /*<<< orphan*/  RTC_CNTL_SCK_DCAP ; 
 int /*<<< orphan*/  RTC_CPU_FREQ_XTAL ; 
 scalar_t__ RTC_FAST_FREQ_8M ; 
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ; 
 scalar_t__ RTC_SLOW_FREQ_8MD256 ; 
 int RTC_XTAL_FREQ_26M ; 
 int RTC_XTAL_FREQ_AUTO ; 
 int /*<<< orphan*/  RTC_XTAL_FREQ_REG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SYSCON_SOC_CLK_SEL ; 
 scalar_t__ SYSCON_SOC_CLK_SEL_PLL ; 
 int /*<<< orphan*/  SYSCON_SYSCLK_CONF_REG ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int FUNC19 () ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

void FUNC23(rtc_clk_config_t cfg)
{
    rtc_cpu_freq_t cpu_source_before = FUNC13();
    /* If we get a TG WDT system reset while running at 240MHz,
     * DPORT_CPUPERIOD_SEL register will be reset to 0 resulting in 120MHz
     * APB and CPU frequencies after reset. This will cause issues with XTAL
     * frequency estimation, so we switch to XTAL frequency first.
     *
     * Ideally we would only do this if SYSCON_SOC_CLK_SEL == PLL and
     * PLL is configured for 480M, but it takes less time to switch to 40M and
     * run the following code than querying the PLL does.
     */
    if (FUNC2(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL) == SYSCON_SOC_CLK_SEL_PLL) {
        FUNC14(RTC_CPU_FREQ_XTAL);
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

    /* Configure 150k clock division */
    FUNC16(cfg.clk_rtc_clk_div);
    /* Configure 8M clock division */
    FUNC10(cfg.clk_8m_clk_div);

    /* Enable the internal bus used to configure PLLs */
    FUNC4(ANA_CONFIG_REG, ANA_CONFIG_M, ANA_CONFIG_M, ANA_CONFIG_S);
    FUNC0(ANA_CONFIG_REG, I2C_APLL_M | I2C_BBPLL_M);

    /* Estimate XTAL frequency */
    rtc_xtal_freq_t xtal_freq = cfg.xtal_freq;
    if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
        if (FUNC8(FUNC1(RTC_XTAL_FREQ_REG))) {
            /* XTAL frequency has already been set, use existing value */
            xtal_freq = FUNC20();
        } else {
            /* Not set yet, estimate XTAL frequency based on RTC_FAST_CLK */
            xtal_freq = FUNC19();
            if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
                FUNC5(TAG, "Can't estimate XTAL frequency, assuming 26MHz");
                xtal_freq = RTC_XTAL_FREQ_26M;
            }
        }
    } else if (!FUNC8(FUNC1(RTC_XTAL_FREQ_REG))) {
        /* Exact frequency was set in sdkconfig, but still warn if autodetected
         * frequency is different. If autodetection failed, worst case we get a
         * bit of garbage output.
         */
        rtc_xtal_freq_t est_xtal_freq = FUNC19();
        if (est_xtal_freq != xtal_freq) {
            FUNC5(TAG, "Possibly invalid CONFIG_ESP32S2_XTAL_FREQ setting (%dMHz). Detected %d MHz.",
                    xtal_freq, est_xtal_freq);
        }
    }
    FUNC22(0);
    FUNC21(xtal_freq);
    FUNC12(xtal_freq * MHZ);
    /* Set CPU frequency */
    FUNC14(cfg.cpu_freq);

    /* Re-calculate the ccount to make time calculation correct. */
    uint32_t freq_before = FUNC15(cpu_source_before) / MHZ;
    uint32_t freq_after = FUNC15(cfg.cpu_freq) / MHZ;
    FUNC7( FUNC6() * freq_after / freq_before );

    /* Slow & fast clocks setup */
    if (cfg.slow_freq == RTC_SLOW_FREQ_32K_XTAL) {
        FUNC9(true);
    }
    if (cfg.fast_freq == RTC_FAST_FREQ_8M) {
        bool need_8md256 = cfg.slow_freq == RTC_SLOW_FREQ_8MD256;
        FUNC11(true, need_8md256);
    }
    FUNC17(cfg.fast_freq);
    FUNC18(cfg.slow_freq);
}