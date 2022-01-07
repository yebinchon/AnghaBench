
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int uint32_t ;
typedef int rtc_wdt_stage_t ;
typedef int esp_err_t ;


 int EFUSE_RD_REPEAT_DATA1_REG ;
 int EFUSE_WDT_DELAY_SEL ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int REG_GET_FIELD (int ,int ) ;
 int RTC_WDT_STAGE0 ;
 int WRITE_PERI_REG (int ,int) ;
 int get_addr_reg (int) ;
 scalar_t__ rtc_clk_slow_freq_get_hz () ;

esp_err_t rtc_wdt_set_time(rtc_wdt_stage_t stage, unsigned int timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t timeout = (uint32_t) ((uint64_t) rtc_clk_slow_freq_get_hz() * timeout_ms / 1000);
    if (stage == RTC_WDT_STAGE0) {
        timeout = timeout >> (1 + REG_GET_FIELD(EFUSE_RD_REPEAT_DATA1_REG, EFUSE_WDT_DELAY_SEL));
    }
    WRITE_PERI_REG(get_addr_reg(stage), timeout);
    return ESP_OK;
}
