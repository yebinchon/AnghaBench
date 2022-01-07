
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rtc_wdt_stage_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int READ_PERI_REG (int ) ;
 int RTC_CNTL_WDTCONFIG1_REG ;
 int RTC_CNTL_WDTCONFIG2_REG ;
 int RTC_CNTL_WDTCONFIG3_REG ;
 int RTC_CNTL_WDTCONFIG4_REG ;
 int RTC_WDT_STAGE0 ;
 int RTC_WDT_STAGE1 ;
 int RTC_WDT_STAGE2 ;
 int rtc_clk_slow_freq_get_hz () ;

esp_err_t rtc_wdt_get_timeout(rtc_wdt_stage_t stage, unsigned int* timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t time_tick;
    if (stage == RTC_WDT_STAGE0) {
        time_tick = READ_PERI_REG(RTC_CNTL_WDTCONFIG1_REG);
    } else if (stage == RTC_WDT_STAGE1) {
        time_tick = READ_PERI_REG(RTC_CNTL_WDTCONFIG2_REG);
    } else if (stage == RTC_WDT_STAGE2) {
        time_tick = READ_PERI_REG(RTC_CNTL_WDTCONFIG3_REG);
    } else {
        time_tick = READ_PERI_REG(RTC_CNTL_WDTCONFIG4_REG);
    }

    *timeout_ms = time_tick * 1000 / rtc_clk_slow_freq_get_hz();

    return ESP_OK;
}
