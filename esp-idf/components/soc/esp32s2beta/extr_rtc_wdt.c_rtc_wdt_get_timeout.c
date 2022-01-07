
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
 int get_addr_reg (int) ;
 int rtc_clk_slow_freq_get_hz () ;

esp_err_t rtc_wdt_get_timeout(rtc_wdt_stage_t stage, unsigned int* timeout_ms)
{
    if (stage > 3) {
        return ESP_ERR_INVALID_ARG;
    }
    uint32_t time_tick;
    time_tick = READ_PERI_REG(get_addr_reg(stage));
    *timeout_ms = time_tick * 1000 / rtc_clk_slow_freq_get_hz();

    return ESP_OK;
}
