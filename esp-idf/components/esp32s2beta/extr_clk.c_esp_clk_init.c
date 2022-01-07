
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rtc_cpu_freq_t ;
typedef int rtc_config_t ;


 int CONFIG_BOOTLOADER_WDT_TIME_MS ;
 int CONFIG_ESP32S2_DEFAULT_CPU_FREQ_MHZ ;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int MHZ ;
 int RTC_CONFIG_DEFAULT () ;
 int RTC_CPU_FREQ_160M ;
 int RTC_CPU_FREQ_240M ;
 int RTC_CPU_FREQ_80M ;
 int RTC_FAST_FREQ_8M ;
 int RTC_SLOW_FREQ_32K_XTAL ;
 int RTC_SLOW_FREQ_RTC ;
 int RTC_WDT_STAGE0 ;
 scalar_t__ RTC_XTAL_FREQ_AUTO ;
 int XTHAL_GET_CCOUNT () ;
 int XTHAL_SET_CCOUNT (int) ;
 int assert (int) ;
 int rtc_clk_cpu_freq_get () ;
 int rtc_clk_cpu_freq_set (int ) ;
 int rtc_clk_cpu_freq_value (int ) ;
 int rtc_clk_fast_freq_set (int ) ;
 scalar_t__ rtc_clk_xtal_freq_get () ;
 int rtc_init (int ) ;
 int rtc_wdt_feed () ;
 int rtc_wdt_protect_off () ;
 int rtc_wdt_protect_on () ;
 int rtc_wdt_set_time (int ,int) ;
 int select_rtc_slow_clk (int ) ;
 int uart_tx_wait_idle (int ) ;

void esp_clk_init(void)
{
    rtc_config_t cfg = RTC_CONFIG_DEFAULT();
    rtc_init(cfg);

    assert(rtc_clk_xtal_freq_get() != RTC_XTAL_FREQ_AUTO);

    rtc_clk_fast_freq_set(RTC_FAST_FREQ_8M);
    select_rtc_slow_clk(RTC_SLOW_FREQ_RTC);
    uint32_t freq_mhz = CONFIG_ESP32S2_DEFAULT_CPU_FREQ_MHZ;
    rtc_cpu_freq_t freq = RTC_CPU_FREQ_80M;
    switch(freq_mhz) {
        case 240:
            freq = RTC_CPU_FREQ_240M;
            break;
        case 160:
            freq = RTC_CPU_FREQ_160M;
            break;
        case 80:
            freq = RTC_CPU_FREQ_80M;
            break;
        default:
            freq_mhz = 80;
            freq = RTC_CPU_FREQ_80M;
            break;
    }



    uart_tx_wait_idle(CONFIG_ESP_CONSOLE_UART_NUM);

    uint32_t freq_before = rtc_clk_cpu_freq_value(rtc_clk_cpu_freq_get()) / MHZ ;

    rtc_clk_cpu_freq_set(freq);


    uint32_t freq_after = CONFIG_ESP32S2_DEFAULT_CPU_FREQ_MHZ;
    XTHAL_SET_CCOUNT( XTHAL_GET_CCOUNT() * freq_after / freq_before );
}
