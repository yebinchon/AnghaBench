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
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int adc_unit_t ;
typedef  scalar_t__ adc_channel_t ;
typedef  scalar_t__ adc1_channel_t ;

/* Variables and functions */
 scalar_t__ ADC1_CHANNEL_MAX ; 
 int /*<<< orphan*/  ADC_ATTEN_DB_11 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ADC_CTRL_DIG ; 
 int /*<<< orphan*/  ADC_ENCODE_12BIT ; 
 int /*<<< orphan*/  ADC_FSM_RSTB_WAIT_DEFAULT ; 
 int /*<<< orphan*/  ADC_FSM_STANDBY_WAIT_DEFAULT ; 
 int /*<<< orphan*/  ADC_FSM_START_WAIT_DEFAULT ; 
 int /*<<< orphan*/  ADC_FSM_TIME_KEEP ; 
 int /*<<< orphan*/  ADC_I2S_DATA_SRC_ADC ; 
 int /*<<< orphan*/  ADC_MAX_MEAS_NUM_DEFAULT ; 
 int /*<<< orphan*/  ADC_MEAS_NUM_LIM_DEFAULT ; 
 int ADC_UNIT_1 ; 
 int ADC_UNIT_2 ; 
 int /*<<< orphan*/  ADC_WIDTH_BIT_12 ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAR_ADC_CLK_DIV_DEFUALT ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtc_spinlock ; 

esp_err_t FUNC16(adc_unit_t adc_unit, adc_channel_t channel)
{
    FUNC0(adc_unit);
    if (adc_unit & ADC_UNIT_1) {
        FUNC1((adc1_channel_t) channel < ADC1_CHANNEL_MAX, "ADC1 channel error", ESP_ERR_INVALID_ARG);
    }

    uint8_t table_len = 1;
    //POWER ON SAR
    FUNC3();
    FUNC2(adc_unit, channel);
    FUNC9(adc_unit, table_len);
    FUNC10(adc_unit, 0, channel, ADC_WIDTH_BIT_12, ADC_ATTEN_DB_11);
    FUNC14(&rtc_spinlock);
    if (adc_unit & ADC_UNIT_1) {
        FUNC5( ADC_UNIT_1, ADC_CTRL_DIG );
    }
    if (adc_unit & ADC_UNIT_2) {
        FUNC5( ADC_UNIT_2, ADC_CTRL_DIG );
    }
    FUNC15(&rtc_spinlock);
    FUNC11(ADC_I2S_DATA_SRC_ADC);
    FUNC4(SAR_ADC_CLK_DIV_DEFUALT);
    // Set internal FSM wait time.
    FUNC8(ADC_FSM_RSTB_WAIT_DEFAULT, ADC_FSM_START_WAIT_DEFAULT, ADC_FSM_STANDBY_WAIT_DEFAULT,
            ADC_FSM_TIME_KEEP);
    FUNC13(adc_unit);
    FUNC6(ADC_ENCODE_12BIT);
    FUNC12(ADC_MAX_MEAS_NUM_DEFAULT, ADC_MEAS_NUM_LIM_DEFAULT);
    //Invert The Level, Invert SAR ADC1 data
    FUNC7(adc_unit, true);
    return ESP_OK;
 }