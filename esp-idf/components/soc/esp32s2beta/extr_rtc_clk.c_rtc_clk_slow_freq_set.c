
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtc_slow_freq_t ;


 int DELAY_SLOW_CLK_SWITCH ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_ANA_CLK_RTC_SEL ;
 int RTC_CNTL_CK8M_FORCE_PU ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_DIG_XTAL32K_EN ;
 scalar_t__ RTC_SLOW_FREQ_32K_XTAL ;
 scalar_t__ RTC_SLOW_FREQ_8MD256 ;
 int ets_delay_us (int ) ;
 int rtc_clk_set_xtal_wait () ;

void rtc_clk_slow_freq_set(rtc_slow_freq_t slow_freq)
{
    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_ANA_CLK_RTC_SEL, slow_freq);




    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_DIG_XTAL32K_EN,
            (slow_freq == RTC_SLOW_FREQ_32K_XTAL) ? 1 : 0);




    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG,RTC_CNTL_CK8M_FORCE_PU, (slow_freq == RTC_SLOW_FREQ_8MD256) ? 1 : 0);
    rtc_clk_set_xtal_wait();
    ets_delay_us(DELAY_SLOW_CLK_SWITCH);
}
