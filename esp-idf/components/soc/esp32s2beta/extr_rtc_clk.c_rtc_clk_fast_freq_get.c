
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_fast_freq_t ;


 int REG_GET_FIELD (int ,int ) ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_FAST_CLK_RTC_SEL ;

rtc_fast_freq_t rtc_clk_fast_freq_get(void)
{
    return REG_GET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_FAST_CLK_RTC_SEL);
}
