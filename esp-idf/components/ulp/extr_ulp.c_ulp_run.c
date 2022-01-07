
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int esp_err_t ;


 int CLEAR_PERI_REG_MASK (int ,int ) ;
 int ESP_OK ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_BIAS_CORE_FOLW_8M ;
 int RTC_CNTL_BIAS_I2C_FOLW_8M ;
 int RTC_CNTL_BIAS_SLEEP_FOLW_8M ;
 int RTC_CNTL_MIN_SLP_VAL ;
 int RTC_CNTL_MIN_SLP_VAL_MIN ;
 int RTC_CNTL_OPTIONS0_REG ;
 int RTC_CNTL_STATE0_REG ;
 int RTC_CNTL_TIMER5_REG ;
 int RTC_CNTL_ULP_CP_SLP_TIMER_EN ;
 int SENS_PC_INIT ;
 int SENS_SAR_START_FORCE_REG ;
 int SENS_ULP_CP_FORCE_START_TOP_M ;
 int SET_PERI_REG_MASK (int ,int ) ;
 int ets_delay_us (int) ;

esp_err_t ulp_run(uint32_t entry_point)
{
    return ESP_OK;
}
