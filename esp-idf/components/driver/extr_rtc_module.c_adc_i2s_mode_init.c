
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;
typedef int adc_unit_t ;
typedef scalar_t__ adc_channel_t ;
typedef scalar_t__ adc1_channel_t ;


 scalar_t__ ADC1_CHANNEL_MAX ;
 int ADC_ATTEN_DB_11 ;
 int ADC_CHECK_UNIT (int) ;
 int ADC_CTRL_DIG ;
 int ADC_ENCODE_12BIT ;
 int ADC_FSM_RSTB_WAIT_DEFAULT ;
 int ADC_FSM_STANDBY_WAIT_DEFAULT ;
 int ADC_FSM_START_WAIT_DEFAULT ;
 int ADC_FSM_TIME_KEEP ;
 int ADC_I2S_DATA_SRC_ADC ;
 int ADC_MAX_MEAS_NUM_DEFAULT ;
 int ADC_MEAS_NUM_LIM_DEFAULT ;
 int ADC_UNIT_1 ;
 int ADC_UNIT_2 ;
 int ADC_WIDTH_BIT_12 ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_MODULE_CHECK (int,char*,int ) ;
 int SAR_ADC_CLK_DIV_DEFUALT ;
 int adc_gpio_init (int,scalar_t__) ;
 int adc_power_always_on () ;
 int adc_set_clk_div (int ) ;
 int adc_set_controller (int,int ) ;
 int adc_set_data_format (int ) ;
 int adc_set_data_inv (int,int) ;
 int adc_set_fsm_time (int ,int ,int ,int ) ;
 int adc_set_i2s_data_len (int,int) ;
 int adc_set_i2s_data_pattern (int,int ,scalar_t__,int ,int ) ;
 int adc_set_i2s_data_source (int ) ;
 int adc_set_measure_limit (int ,int ) ;
 int adc_set_work_mode (int) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc_i2s_mode_init(adc_unit_t adc_unit, adc_channel_t channel)
{
    ADC_CHECK_UNIT(adc_unit);
    if (adc_unit & ADC_UNIT_1) {
        RTC_MODULE_CHECK((adc1_channel_t) channel < ADC1_CHANNEL_MAX, "ADC1 channel error", ESP_ERR_INVALID_ARG);
    }

    uint8_t table_len = 1;

    adc_power_always_on();
    adc_gpio_init(adc_unit, channel);
    adc_set_i2s_data_len(adc_unit, table_len);
    adc_set_i2s_data_pattern(adc_unit, 0, channel, ADC_WIDTH_BIT_12, ADC_ATTEN_DB_11);
    portENTER_CRITICAL(&rtc_spinlock);
    if (adc_unit & ADC_UNIT_1) {
        adc_set_controller( ADC_UNIT_1, ADC_CTRL_DIG );
    }
    if (adc_unit & ADC_UNIT_2) {
        adc_set_controller( ADC_UNIT_2, ADC_CTRL_DIG );
    }
    portEXIT_CRITICAL(&rtc_spinlock);
    adc_set_i2s_data_source(ADC_I2S_DATA_SRC_ADC);
    adc_set_clk_div(SAR_ADC_CLK_DIV_DEFUALT);

    adc_set_fsm_time(ADC_FSM_RSTB_WAIT_DEFAULT, ADC_FSM_START_WAIT_DEFAULT, ADC_FSM_STANDBY_WAIT_DEFAULT,
            ADC_FSM_TIME_KEEP);
    adc_set_work_mode(adc_unit);
    adc_set_data_format(ADC_ENCODE_12BIT);
    adc_set_measure_limit(ADC_MAX_MEAS_NUM_DEFAULT, ADC_MEAS_NUM_LIM_DEFAULT);

    adc_set_data_inv(adc_unit, 1);
    return ESP_OK;
 }
