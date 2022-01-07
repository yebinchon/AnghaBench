
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RTC_SLOW_CLK_FREQ_150K ;
 int RTC_SLOW_CLK_FREQ_32K ;
 int RTC_SLOW_CLK_FREQ_8MD256 ;



 int rtc_clk_slow_freq_get () ;

uint32_t rtc_clk_slow_freq_get_hz(void)
{
    switch(rtc_clk_slow_freq_get()) {
        case 128: return RTC_SLOW_CLK_FREQ_150K;
        case 130: return RTC_SLOW_CLK_FREQ_32K;
        case 129: return RTC_SLOW_CLK_FREQ_8MD256;
    }
    return 0;
}
