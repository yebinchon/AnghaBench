
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APB_CTRL_PRE_DIV_CNT ;
 int APB_CTRL_SYSCLK_CONF_REG ;
 int DIG_DBIAS_XTAL ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_DIG_DBIAS_WAK ;
 int RTC_CNTL_REG ;
 int RTC_CNTL_SOC_CLK_SEL ;
 int RTC_CNTL_SOC_CLK_SEL_8M ;
 int RTC_FAST_CLK_FREQ_8M ;
 int ets_update_cpu_frequency (int) ;
 int rtc_clk_apb_freq_update (int ) ;

__attribute__((used)) static void rtc_clk_cpu_freq_to_8m(void)
{
    ets_update_cpu_frequency(8);
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    REG_SET_FIELD(APB_CTRL_SYSCLK_CONF_REG, APB_CTRL_PRE_DIV_CNT, 0);
    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL, RTC_CNTL_SOC_CLK_SEL_8M);
    rtc_clk_apb_freq_update(RTC_FAST_CLK_FREQ_8M);
}
