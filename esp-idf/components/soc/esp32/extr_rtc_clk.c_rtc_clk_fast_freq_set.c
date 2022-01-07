
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_fast_freq_t ;


 int DELAY_FAST_CLK_SWITCH ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_FAST_CLK_RTC_SEL ;
 int ets_delay_us (int ) ;

void rtc_clk_fast_freq_set(rtc_fast_freq_t fast_freq)
{
    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_FAST_CLK_RTC_SEL, fast_freq);
    ets_delay_us(DELAY_FAST_CLK_SWITCH);
}
