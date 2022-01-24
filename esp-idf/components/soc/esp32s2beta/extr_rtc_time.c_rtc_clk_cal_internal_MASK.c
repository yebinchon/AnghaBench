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
typedef  int rtc_cal_sel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MHZ ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int RTC_CAL_32K_XTAL ; 
 int RTC_CAL_8MD256 ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_CLK8M_D256_EN ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_XTAL32K_EN ; 
 int RTC_FAST_CLK_FREQ_APPROX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_CLK_SEL ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_MAX ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_RDY ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_START ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_START_CYCLING ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_TIMEOUT ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_TIMEOUT_THRES ; 
 int /*<<< orphan*/  TIMG_RTC_CALI_VALUE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

uint32_t FUNC9(rtc_cal_sel_t cal_clk, uint32_t slowclk_cycles)
{
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
    /* There may be another calibration process already running during we call this function,
     * so we should wait the last process is done.
     */
    if (!FUNC1(FUNC6(0), TIMG_RTC_CALI_TIMEOUT)) {
        if (FUNC1(FUNC7(0), TIMG_RTC_CALI_START_CYCLING)) {
            while(!FUNC1(FUNC7(0), TIMG_RTC_CALI_RDY));
        }
    }
    FUNC0(FUNC7(0), TIMG_RTC_CALI_START_CYCLING);
    FUNC3(FUNC7(0), TIMG_RTC_CALI_MAX, slowclk_cycles);
    /* Figure out how long to wait for calibration to finish */

    /* Set timeout reg and expect time delay*/
    uint32_t expected_freq;
    if (cal_clk == RTC_CAL_32K_XTAL) {
        FUNC3(FUNC6(0), TIMG_RTC_CALI_TIMEOUT_THRES, (slowclk_cycles << 13));
        expected_freq = 32768;
    } else if (cal_clk == RTC_CAL_8MD256) {
        FUNC3(FUNC6(0), TIMG_RTC_CALI_TIMEOUT_THRES, (slowclk_cycles << 13));
        expected_freq = RTC_FAST_CLK_FREQ_APPROX / 256;
    } else {
        FUNC3(FUNC6(0), TIMG_RTC_CALI_TIMEOUT_THRES, (slowclk_cycles << 11));
        expected_freq = 90000;
    }
    uint32_t us_time_estimate = (uint32_t) (((uint64_t) slowclk_cycles) * MHZ / expected_freq);
    /* Start calibration */
    FUNC0(FUNC7(0), TIMG_RTC_CALI_START);
    FUNC4(FUNC7(0), TIMG_RTC_CALI_START);

    /* Wait for calibration to finish up to another us_time_estimate */
    FUNC8(us_time_estimate);
    uint32_t cal_val;
    while (true) {
        if (FUNC1(FUNC7(0), TIMG_RTC_CALI_RDY)) {
            cal_val = FUNC2(FUNC5(0), TIMG_RTC_CALI_VALUE);
            break;
        }
        if (FUNC1(FUNC6(0), TIMG_RTC_CALI_TIMEOUT)) {
            cal_val = 0;
            break;
        }
    }
    FUNC0(FUNC7(0), TIMG_RTC_CALI_START);

    FUNC3(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN, dig_32k_xtal_state);

    if (cal_clk == RTC_CAL_8MD256) {
        FUNC0(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_CLK8M_D256_EN);
    }

    return cal_val;
}