
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ source; scalar_t__ source_freq_mhz; int freq_mhz; int div; } ;
typedef TYPE_1__ rtc_cpu_freq_config_t ;


 scalar_t__ RTC_CPU_FREQ_SRC_PLL ;
 scalar_t__ RTC_CPU_FREQ_SRC_XTAL ;
 int rtc_clk_cpu_freq_set_config (TYPE_1__ const*) ;
 int rtc_clk_cpu_freq_to_pll_mhz (int ) ;
 int rtc_clk_cpu_freq_to_xtal (int ,int ) ;
 scalar_t__ s_cur_pll_freq ;

void rtc_clk_cpu_freq_set_config_fast(const rtc_cpu_freq_config_t* config)
{
    if (config->source == RTC_CPU_FREQ_SRC_XTAL) {
        rtc_clk_cpu_freq_to_xtal(config->freq_mhz, config->div);
    } else if (config->source == RTC_CPU_FREQ_SRC_PLL &&
            s_cur_pll_freq == config->source_freq_mhz) {
        rtc_clk_cpu_freq_to_pll_mhz(config->freq_mhz);
    } else {

        rtc_clk_cpu_freq_set_config(config);
    }
}
