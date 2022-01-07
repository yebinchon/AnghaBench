
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ rtc_xtal_freq_t ;
struct TYPE_5__ {int freq_mhz; } ;
typedef TYPE_1__ rtc_cpu_freq_config_t ;
typedef int rtc_config_t ;


 int CONFIG_BOOTLOADER_WDT_TIME_MS ;
 int CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ ;
 int CONFIG_ESP_CONSOLE_UART_NUM ;
 int ESP_EARLY_LOGW (int ,char*) ;
 int RTC_CONFIG_DEFAULT () ;
 int RTC_FAST_FREQ_8M ;
 int RTC_SLOW_FREQ_RTC ;
 int RTC_WDT_STAGE0 ;
 scalar_t__ RTC_XTAL_FREQ_AUTO ;
 int SLOW_CLK_32K_EXT_OSC ;
 int SLOW_CLK_32K_XTAL ;
 int SLOW_CLK_8MD256 ;
 int TAG ;
 scalar_t__ XTHAL_GET_CCOUNT () ;
 int XTHAL_SET_CCOUNT (int const) ;
 int assert (int) ;
 int bootloader_clock_configure () ;
 int rtc_clk_cpu_freq_get_config (TYPE_1__*) ;
 int rtc_clk_cpu_freq_mhz_to_config (int const,TYPE_1__*) ;
 int rtc_clk_cpu_freq_set_config (TYPE_1__*) ;
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
    rtc_cpu_freq_config_t old_config, new_config;
    rtc_clk_cpu_freq_get_config(&old_config);
    const uint32_t old_freq_mhz = old_config.freq_mhz;
    const uint32_t new_freq_mhz = CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ;

    bool res = rtc_clk_cpu_freq_mhz_to_config(new_freq_mhz, &new_config);
    assert(res);



    uart_tx_wait_idle(CONFIG_ESP_CONSOLE_UART_NUM);

    rtc_clk_cpu_freq_set_config(&new_config);


    XTHAL_SET_CCOUNT( (uint64_t)XTHAL_GET_CCOUNT() * new_freq_mhz / old_freq_mhz );
}
