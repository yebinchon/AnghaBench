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
typedef  scalar_t__ rtc_slow_freq_t ;
typedef  int rtc_cal_sel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MHZ ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int RTC_CAL_32K_XTAL ; 
 int RTC_CAL_8MD256 ; 
 int RTC_CAL_RTC_MUX ; 
 int RTC_CNTL_ANA_CLK_RTC_SEL ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_CLK8M_D256_EN ; 
 int RTC_CNTL_DIG_XTAL32K_EN ; 
 int RTC_FAST_CLK_FREQ_APPROX ; 
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ; 
 scalar_t__ RTC_SLOW_FREQ_8MD256 ; 
 scalar_t__ RTC_XTAL_FREQ_40M ; 
 scalar_t__ RTC_XTAL_FREQ_AUTO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int TIMG_RTC_CALI_CLK_SEL ; 
 int TIMG_RTC_CALI_MAX ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_RDY ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_START ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_START_CYCLING ; 
 int TIMG_RTC_CALI_VALUE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static uint32_t FUNC11(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{
    FUNC8(slowclk_cycles < 32767);
    /* Enable requested clock (150k clock is always on) */
    int dig_32k_xtal_state = FUNC2(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN);
    if (cal_clk == RTC_CAL_32K_XTAL && !dig_32k_xtal_state) {
        FUNC3(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN, 1);
    }

    if (cal_clk == RTC_CAL_8MD256) {
        FUNC4(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_CLK8M_D256_EN);
    }
    /* Prepare calibration */
    FUNC3(FUNC7(0), TIMG_RTC_CALI_CLK_SEL, cal_clk);
    FUNC0(FUNC7(0), TIMG_RTC_CALI_START_CYCLING);
    FUNC3(FUNC7(0), TIMG_RTC_CALI_MAX, slowclk_cycles);
    /* Figure out how long to wait for calibration to finish */
    uint32_t expected_freq;
    rtc_slow_freq_t slow_freq = FUNC2(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ANA_CLK_RTC_SEL);
    if (cal_clk == RTC_CAL_32K_XTAL ||
        (cal_clk == RTC_CAL_RTC_MUX && slow_freq == RTC_SLOW_FREQ_32K_XTAL)) {
        expected_freq = 32768; /* standard 32k XTAL */
    } else if (cal_clk == RTC_CAL_8MD256 ||
            (cal_clk == RTC_CAL_RTC_MUX && slow_freq == RTC_SLOW_FREQ_8MD256)) {
        expected_freq = RTC_FAST_CLK_FREQ_APPROX / 256;
    } else {
        expected_freq = 150000; /* 150k internal oscillator */
    }
    uint32_t us_time_estimate = (uint32_t) (((uint64_t) slowclk_cycles) * MHZ / expected_freq);
    /* Check if the required number of slowclk_cycles may result in an overflow of TIMG_RTC_CALI_VALUE */
    rtc_xtal_freq_t xtal_freq = FUNC10();
    if (xtal_freq == RTC_XTAL_FREQ_AUTO) {
        /* XTAL frequency is not known yet; assume worst case (40 MHz) */
        xtal_freq = RTC_XTAL_FREQ_40M;
    }
    const uint32_t us_timer_max =  TIMG_RTC_CALI_VALUE / (uint32_t) xtal_freq;
    if (us_time_estimate >= us_timer_max) {
        FUNC5(TAG, "slowclk_cycles value too large, possible overflow");
        return 0;
    }
    /* Start calibration */
    FUNC0(FUNC7(0), TIMG_RTC_CALI_START);
    FUNC4(FUNC7(0), TIMG_RTC_CALI_START);
    /* Wait the expected time calibration should take.
     * TODO: if running under RTOS, and us_time_estimate > RTOS tick, use the
     * RTOS delay function.
     */
    FUNC9(us_time_estimate);
    /* Wait for calibration to finish up to another us_time_estimate */
    int timeout_us = us_time_estimate;
    while (!FUNC1(FUNC7(0), TIMG_RTC_CALI_RDY) &&
            timeout_us > 0) {
        timeout_us--;
        FUNC9(1);
    }

    FUNC3(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN, dig_32k_xtal_state);

    if (cal_clk == RTC_CAL_8MD256) {
        FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_CLK8M_D256_EN);
    }
    if (timeout_us == 0) {
        /* timed out waiting for calibration */
        return 0;
    }

    return FUNC2(FUNC6(0), TIMG_RTC_CALI_VALUE);
}