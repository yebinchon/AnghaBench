
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_slow_freq_t ;


 int REG_GET_FIELD (int ,int ) ;
 int RTC_CNTL_ANA_CLK_RTC_SEL ;
 int RTC_CNTL_CLK_CONF_REG ;

rtc_slow_freq_t rtc_clk_slow_freq_get(void)
{
    return REG_GET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ANA_CLK_RTC_SEL);
}
