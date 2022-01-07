
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int uint32_t ;
typedef int rtc_wdt_stage_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int RTC_CNTL_WDTCONFIG1_REG ;
 int RTC_CNTL_WDTCONFIG2_REG ;
 int RTC_CNTL_WDTCONFIG3_REG ;
 int RTC_CNTL_WDTCONFIG4_REG ;
 int RTC_WDT_STAGE0 ;
 int RTC_WDT_STAGE1 ;
 int RTC_WDT_STAGE2 ;
 int WRITE_PERI_REG (int ,int ) ;
 scalar_t__ rtc_clk_slow_freq_get_hz () ;

esp_err_t rtc_wdt_set_time(rtc_wdt_stage_t stage, unsigned int timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t timeout = (uint32_t) ((uint64_t) rtc_clk_slow_freq_get_hz() * timeout_ms / 1000);
    if (stage == RTC_WDT_STAGE0) {
        WRITE_PERI_REG(RTC_CNTL_WDTCONFIG1_REG, timeout);
    } else if (stage == RTC_WDT_STAGE1) {
        WRITE_PERI_REG(RTC_CNTL_WDTCONFIG2_REG, timeout);
    } else if (stage == RTC_WDT_STAGE2) {
        WRITE_PERI_REG(RTC_CNTL_WDTCONFIG3_REG, timeout);
    } else {
        WRITE_PERI_REG(RTC_CNTL_WDTCONFIG4_REG, timeout);
    }

    return ESP_OK;
}
