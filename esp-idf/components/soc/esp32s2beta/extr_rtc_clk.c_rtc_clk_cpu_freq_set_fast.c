
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtc_cpu_freq_t ;


 scalar_t__ RTC_CPU_FREQ_2M ;
 scalar_t__ RTC_CPU_FREQ_XTAL ;
 int rtc_clk_cpu_freq_set (scalar_t__) ;
 int rtc_clk_cpu_freq_to_pll (scalar_t__) ;
 int rtc_clk_cpu_freq_to_xtal () ;
 scalar_t__ s_cur_freq ;

void rtc_clk_cpu_freq_set_fast(rtc_cpu_freq_t cpu_freq)
{
    if (cpu_freq == s_cur_freq) {
        return;
    } else if (cpu_freq == RTC_CPU_FREQ_2M || s_cur_freq == RTC_CPU_FREQ_2M) {

        rtc_clk_cpu_freq_set(cpu_freq);
    } else if (cpu_freq == RTC_CPU_FREQ_XTAL) {
        rtc_clk_cpu_freq_to_xtal();
    } else if (cpu_freq > RTC_CPU_FREQ_XTAL) {
        rtc_clk_cpu_freq_to_pll(cpu_freq);


    }
}
