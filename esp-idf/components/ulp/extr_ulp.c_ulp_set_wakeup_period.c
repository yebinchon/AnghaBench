
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGW (int ,char*,scalar_t__) ;
 int ESP_OK ;
 scalar_t__ REG_GET_FIELD (int ,int ) ;
 int REG_SET_FIELD (scalar_t__,int ,scalar_t__) ;
 scalar_t__ RTC_CLK_CAL_FRACT ;
 int RTC_CNTL_TIMER2_REG ;
 int RTC_CNTL_ULPCP_TOUCH_START_WAIT ;
 int SENS_SLEEP_CYCLES_S0 ;
 scalar_t__ SENS_ULP_CP_SLEEP_CYC0_REG ;
 int TAG ;
 scalar_t__ ULP_FSM_PREPARE_SLEEP_CYCLES ;
 scalar_t__ ULP_FSM_WAKEUP_SLEEP_CYCLES ;
 scalar_t__ esp_clk_slowclk_cal_get () ;

esp_err_t ulp_set_wakeup_period(size_t period_index, uint32_t period_us)
{
    return ESP_OK;
}
