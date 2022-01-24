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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int rtc_xtal_freq_t ;

/* Variables and functions */
 int BBPLL_BBADC_DSMP_VAL_320M ; 
 int BBPLL_BBADC_DSMP_VAL_480M ; 
 int BBPLL_ENDIV5_VAL_320M ; 
 int BBPLL_ENDIV5_VAL_480M ; 
 int /*<<< orphan*/  DELAY_PLL_DBIAS_RAISE ; 
 int /*<<< orphan*/  DELAY_PLL_ENABLE_WITH_150K ; 
 int /*<<< orphan*/  DELAY_PLL_ENABLE_WITH_32K ; 
 int /*<<< orphan*/  DIG_DBIAS_240M ; 
 int /*<<< orphan*/  DIG_DBIAS_80M_160M ; 
 int /*<<< orphan*/  I2C_BBPLL ; 
 int /*<<< orphan*/  I2C_BBPLL_BBADC_DSMP ; 
 int /*<<< orphan*/  I2C_BBPLL_ENDIV5 ; 
 int /*<<< orphan*/  I2C_BBPLL_OC_DCUR ; 
 int /*<<< orphan*/  I2C_BBPLL_OC_DIV_7_0 ; 
 int /*<<< orphan*/  I2C_BBPLL_OC_LREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_CNTL_DIG_DBIAS_WAK ; 
 int /*<<< orphan*/  RTC_CNTL_REG ; 
 int RTC_PLL_FREQ_320M ; 
 scalar_t__ RTC_SLOW_FREQ_RTC ; 
#define  RTC_XTAL_FREQ_24M 130 
#define  RTC_XTAL_FREQ_26M 129 
#define  RTC_XTAL_FREQ_40M 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int s_cur_pll_freq ; 

void FUNC4(rtc_xtal_freq_t xtal_freq, int pll_freq)
{
    uint8_t div_ref;
    uint8_t div7_0;
    uint8_t div10_8;
    uint8_t lref;
    uint8_t dcur;
    uint8_t bw;

    if (pll_freq == RTC_PLL_FREQ_320M) {
        /* Raise the voltage, if needed */
        FUNC1(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
        /* Configure 320M PLL */
        switch (xtal_freq) {
            case RTC_XTAL_FREQ_40M:
                div_ref = 0;
                div7_0 = 32;
                div10_8 = 0;
                lref = 0;
                dcur = 6;
                bw = 3;
                break;
            case RTC_XTAL_FREQ_26M:
                div_ref = 12;
                div7_0 = 224;
                div10_8 = 4;
                lref = 1;
                dcur = 0;
                bw = 1;
                break;
            case RTC_XTAL_FREQ_24M:
                div_ref = 11;
                div7_0 = 224;
                div10_8 = 4;
                lref = 1;
                dcur = 0;
                bw = 1;
                break;
            default:
                div_ref = 12;
                div7_0 = 224;
                div10_8 = 4;
                lref = 0;
                dcur = 0;
                bw = 0;
                break;
        }
        FUNC0(I2C_BBPLL, I2C_BBPLL_ENDIV5, BBPLL_ENDIV5_VAL_320M);
        FUNC0(I2C_BBPLL, I2C_BBPLL_BBADC_DSMP, BBPLL_BBADC_DSMP_VAL_320M);
    } else {
        /* Raise the voltage */
        FUNC1(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_240M);
        FUNC2(DELAY_PLL_DBIAS_RAISE);
        /* Configure 480M PLL */
        switch (xtal_freq) {
            case RTC_XTAL_FREQ_40M:
                div_ref = 0;
                div7_0 = 28;
                div10_8 = 0;
                lref = 0;
                dcur = 6;
                bw = 3;
                break;
            case RTC_XTAL_FREQ_26M:
                div_ref = 12;
                div7_0 = 144;
                div10_8 = 4;
                lref = 1;
                dcur = 0;
                bw = 1;
                break;
            case RTC_XTAL_FREQ_24M:
                div_ref = 11;
                div7_0 = 144;
                div10_8 = 4;
                lref = 1;
                dcur = 0;
                bw = 1;
                break;
            default:
                div_ref = 12;
                div7_0 = 224;
                div10_8 = 4;
                lref = 0;
                dcur = 0;
                bw = 0;
                break;
        }
        FUNC0(I2C_BBPLL, I2C_BBPLL_ENDIV5, BBPLL_ENDIV5_VAL_480M);
        FUNC0(I2C_BBPLL, I2C_BBPLL_BBADC_DSMP, BBPLL_BBADC_DSMP_VAL_480M);
    }

    uint8_t i2c_bbpll_lref  = (lref << 7) | (div10_8 << 4) | (div_ref);
    uint8_t i2c_bbpll_div_7_0 = div7_0;
    uint8_t i2c_bbpll_dcur = (bw << 6) | dcur;
    FUNC0(I2C_BBPLL, I2C_BBPLL_OC_LREF, i2c_bbpll_lref);
    FUNC0(I2C_BBPLL, I2C_BBPLL_OC_DIV_7_0, i2c_bbpll_div_7_0);
    FUNC0(I2C_BBPLL, I2C_BBPLL_OC_DCUR, i2c_bbpll_dcur);
    uint32_t delay_pll_en = (FUNC3() == RTC_SLOW_FREQ_RTC) ?
            DELAY_PLL_ENABLE_WITH_150K : DELAY_PLL_ENABLE_WITH_32K;
    FUNC2(delay_pll_en);
    s_cur_pll_freq = pll_freq;
}