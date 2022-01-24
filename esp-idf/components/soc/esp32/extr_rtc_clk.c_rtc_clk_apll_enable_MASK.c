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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  APLL_CAL_DELAY_1 ; 
 int /*<<< orphan*/  APLL_CAL_DELAY_2 ; 
 int /*<<< orphan*/  APLL_CAL_DELAY_3 ; 
 int /*<<< orphan*/  APLL_SDM_STOP_VAL_1 ; 
 int /*<<< orphan*/  APLL_SDM_STOP_VAL_2_REV0 ; 
 int /*<<< orphan*/  APLL_SDM_STOP_VAL_2_REV1 ; 
 int /*<<< orphan*/  EFUSE_BLK0_RDATA3_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  I2C_APLL ; 
 int /*<<< orphan*/  I2C_APLL_DSDM0 ; 
 int /*<<< orphan*/  I2C_APLL_DSDM1 ; 
 int /*<<< orphan*/  I2C_APLL_DSDM2 ; 
 int /*<<< orphan*/  I2C_APLL_IR_CAL_DELAY ; 
 int /*<<< orphan*/  I2C_APLL_OR_CAL_END ; 
 int /*<<< orphan*/  I2C_APLL_OR_OUTPUT_DIV ; 
 int /*<<< orphan*/  I2C_APLL_SDM_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_BIAS_I2C_FORCE_PD ; 
 int /*<<< orphan*/  RTC_CNTL_CLK_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_OPTIONS0_REG ; 
 int /*<<< orphan*/  RTC_CNTL_PLLA_FORCE_PD ; 
 int /*<<< orphan*/  RTC_CNTL_PLLA_FORCE_PU ; 
 int /*<<< orphan*/  RTC_CNTL_SOC_CLK_SEL ; 
 scalar_t__ RTC_CNTL_SOC_CLK_SEL_PLL ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(bool enable, uint32_t sdm0, uint32_t sdm1, uint32_t sdm2, uint32_t o_div)
{
    FUNC7(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD, enable ? 0 : 1);
    FUNC7(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PU, enable ? 1 : 0);

    if (!enable &&
        FUNC5(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL) != RTC_CNTL_SOC_CLK_SEL_PLL) {
        FUNC6(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
    } else {
        FUNC4(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
    }

    if (enable) {
        uint8_t sdm_stop_val_2 = APLL_SDM_STOP_VAL_2_REV1;
        uint32_t is_rev0 = (FUNC0(EFUSE_BLK0_RDATA3_REG, 1, 15) == 0);
        if (is_rev0) {
            sdm0 = 0;
            sdm1 = 0;
            sdm_stop_val_2 = APLL_SDM_STOP_VAL_2_REV0;
        }
        FUNC2(I2C_APLL, I2C_APLL_DSDM2, sdm2);
        FUNC2(I2C_APLL, I2C_APLL_DSDM0, sdm0);
        FUNC2(I2C_APLL, I2C_APLL_DSDM1, sdm1);
        FUNC3(I2C_APLL, I2C_APLL_SDM_STOP, APLL_SDM_STOP_VAL_1);
        FUNC3(I2C_APLL, I2C_APLL_SDM_STOP, sdm_stop_val_2);
        FUNC2(I2C_APLL, I2C_APLL_OR_OUTPUT_DIV, o_div);

        /* calibration */
        FUNC3(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_1);
        FUNC3(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_2);
        FUNC3(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_3);

        /* wait for calibration end */
        while (!(FUNC1(I2C_APLL, I2C_APLL_OR_CAL_END))) {
            /* use ets_delay_us so the RTC bus doesn't get flooded */
            FUNC8(1);
        }
    }
}