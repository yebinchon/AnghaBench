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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  APLL_CAL_DELAY_1 ; 
 int /*<<< orphan*/  APLL_CAL_DELAY_2 ; 
 int /*<<< orphan*/  APLL_CAL_DELAY_3 ; 
 int /*<<< orphan*/  APLL_SDM_STOP_VAL_1 ; 
 int /*<<< orphan*/  APLL_SDM_STOP_VAL_2_REV1 ; 
 int /*<<< orphan*/  I2C_APLL ; 
 int /*<<< orphan*/  I2C_APLL_DSDM0 ; 
 int /*<<< orphan*/  I2C_APLL_DSDM1 ; 
 int /*<<< orphan*/  I2C_APLL_DSDM2 ; 
 int /*<<< orphan*/  I2C_APLL_IR_CAL_DELAY ; 
 int /*<<< orphan*/  I2C_APLL_OR_CAL_END ; 
 int /*<<< orphan*/  I2C_APLL_OR_OUTPUT_DIV ; 
 int /*<<< orphan*/  I2C_APLL_SDM_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTC_CNTL_ANA_CONF_REG ; 
 int /*<<< orphan*/  RTC_CNTL_PLLA_FORCE_PD ; 
 int /*<<< orphan*/  RTC_CNTL_PLLA_FORCE_PU ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(bool enable, uint32_t sdm0, uint32_t sdm1, uint32_t sdm2, uint32_t o_div)
{
    FUNC3(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PD, enable ? 0 : 1);
    FUNC3(RTC_CNTL_ANA_CONF_REG, RTC_CNTL_PLLA_FORCE_PU, enable ? 1 : 0);

    /* BIAS I2C not exist any more, but not sure how to get the same effect yet...
     * if (!enable &&
     *   REG_GET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL) != SYSCON_SOC_CLK_SEL_PLL) {
     *   REG_SET_BIT(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
     * } else {
     *   REG_CLR_BIT(RTC_CNTL_OPTIONS0_REG, RTC_CNTL_BIAS_I2C_FORCE_PD);
     * }
     */

    if (enable) {
        /* no need to differentiate ECO chip any more
        uint8_t sdm_stop_val_2 = APLL_SDM_STOP_VAL_2_REV1;
        uint32_t is_rev0 = (GET_PERI_REG_BITS2(EFUSE_BLK0_RDATA3_REG, 1, 15) == 0);
        if (is_rev0) {
            sdm0 = 0;
            sdm1 = 0;
            sdm_stop_val_2 = APLL_SDM_STOP_VAL_2_REV0;
        }
        */
        FUNC1(I2C_APLL, I2C_APLL_DSDM2, sdm2);
        FUNC1(I2C_APLL, I2C_APLL_DSDM0, sdm0);
        FUNC1(I2C_APLL, I2C_APLL_DSDM1, sdm1);
        FUNC2(I2C_APLL, I2C_APLL_SDM_STOP, APLL_SDM_STOP_VAL_1);
        FUNC2(I2C_APLL, I2C_APLL_SDM_STOP, APLL_SDM_STOP_VAL_2_REV1);
        FUNC1(I2C_APLL, I2C_APLL_OR_OUTPUT_DIV, o_div);

        /* calibration */
        FUNC2(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_1);
        FUNC2(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_2);
        FUNC2(I2C_APLL, I2C_APLL_IR_CAL_DELAY, APLL_CAL_DELAY_3);

        /* wait for calibration end */
        while (!(FUNC0(I2C_APLL, I2C_APLL_OR_CAL_END))) {
            /* use ets_delay_us so the RTC bus doesn't get flooded */
            FUNC4(1);
        }
    }
}