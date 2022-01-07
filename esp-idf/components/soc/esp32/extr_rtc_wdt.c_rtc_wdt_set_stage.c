
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_wdt_stage_t ;
typedef int rtc_wdt_stage_action_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDT_STG0 ;
 int RTC_CNTL_WDT_STG1 ;
 int RTC_CNTL_WDT_STG2 ;
 int RTC_CNTL_WDT_STG3 ;
 int RTC_WDT_STAGE0 ;
 int RTC_WDT_STAGE1 ;
 int RTC_WDT_STAGE2 ;

esp_err_t rtc_wdt_set_stage(rtc_wdt_stage_t stage, rtc_wdt_stage_action_t stage_sel)
{
    if (stage > 3 || stage_sel > 4) {
        return ESP_ERR_INVALID_ARG;
    }
    if (stage == RTC_WDT_STAGE0) {
        REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_STG0, stage_sel);
    } else if (stage == RTC_WDT_STAGE1) {
        REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_STG1, stage_sel);
    } else if (stage == RTC_WDT_STAGE2) {
        REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_STG2, stage_sel);
    } else {
        REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_STG3, stage_sel);
    }

    return ESP_OK;
}
