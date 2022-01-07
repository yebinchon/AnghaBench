
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_wdt_reset_sig_t ;
typedef int rtc_wdt_length_sig_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_WDTCONFIG0_REG ;
 int RTC_CNTL_WDT_CPU_RESET_LENGTH ;
 int RTC_CNTL_WDT_SYS_RESET_LENGTH ;

esp_err_t rtc_wdt_set_length_of_reset_signal(rtc_wdt_reset_sig_t reset_src, rtc_wdt_length_sig_t reset_signal_length)
{
    if (reset_src > 1 || reset_signal_length > 7) {
        return ESP_ERR_INVALID_ARG;
    }
    if (reset_src == 0) {
        REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_SYS_RESET_LENGTH, reset_signal_length);
    } else {
        REG_SET_FIELD(RTC_CNTL_WDTCONFIG0_REG, RTC_CNTL_WDT_CPU_RESET_LENGTH, reset_signal_length);
    }

    return ESP_OK;
}
