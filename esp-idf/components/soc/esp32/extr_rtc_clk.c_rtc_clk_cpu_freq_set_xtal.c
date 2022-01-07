
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtc_clk_bbpll_disable () ;
 int rtc_clk_cpu_freq_to_xtal (int,int) ;
 int rtc_clk_wait_for_slow_cycle () ;
 scalar_t__ rtc_clk_xtal_freq_get () ;

void rtc_clk_cpu_freq_set_xtal(void)
{
    int freq_mhz = (int) rtc_clk_xtal_freq_get();

    rtc_clk_cpu_freq_to_xtal(freq_mhz, 1);
    rtc_clk_wait_for_slow_cycle();
    rtc_clk_bbpll_disable();
}
