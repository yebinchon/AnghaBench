
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int cpu_freq_mhz; int fast_freq; int slow_freq; int cpu_freq; int xtal_freq; } ;
typedef TYPE_1__ rtc_clk_config_t ;


 int CONFIG_ESP32S2_XTAL_FREQ ;
 int CONFIG_ESP32_RTC_XTAL_BOOTSTRAP_CYCLES ;
 int CONFIG_ESP32_XTAL_FREQ ;
 int DPORT_CPUPERIOD_SEL ;
 scalar_t__ DPORT_CPUPERIOD_SEL_240 ;
 int DPORT_CPU_PER_CONF_REG ;
 scalar_t__ DPORT_REG_GET_FIELD (int ,int ) ;
 int EFUSE_BLK0_RDATA3_REG ;
 int EFUSE_RD_CHIP_VER_REV1_M ;
 int REG_READ (int ) ;
 TYPE_1__ RTC_CLK_CONFIG_DEFAULT () ;
 int RTC_CPU_FREQ_80M ;
 int rtc_clk_32k_bootstrap (int ) ;
 int rtc_clk_32k_enabled () ;
 int rtc_clk_fast_freq_get () ;
 int rtc_clk_init (TYPE_1__) ;
 int rtc_clk_slow_freq_get () ;
 int uart_tx_wait_idle (int ) ;

void bootloader_clock_configure(void)
{





    uart_tx_wait_idle(0);
    rtc_clk_config_t clk_cfg = RTC_CLK_CONFIG_DEFAULT();







    clk_cfg.slow_freq = rtc_clk_slow_freq_get();
    clk_cfg.fast_freq = rtc_clk_fast_freq_get();
    rtc_clk_init(clk_cfg);
}
