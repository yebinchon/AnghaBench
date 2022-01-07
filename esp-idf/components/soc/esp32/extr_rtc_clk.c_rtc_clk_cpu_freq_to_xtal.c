
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APB_CTRL_PRE_DIV_CNT ;
 int APB_CTRL_SYSCLK_CONF_REG ;
 int APB_CTRL_XTAL_TICK_CONF_REG ;
 int DIG_DBIAS_2M ;
 int DIG_DBIAS_XTAL ;
 int MHZ ;
 int REF_CLK_FREQ ;
 int REG_SET_FIELD (int ,int ,int) ;
 int REG_WRITE (int ,int) ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_DIG_DBIAS_WAK ;
 int RTC_CNTL_REG ;
 int RTC_CNTL_SOC_CLK_SEL ;
 int RTC_CNTL_SOC_CLK_SEL_XTL ;
 int ets_update_cpu_frequency (int) ;
 int rtc_clk_apb_freq_update (int) ;

void rtc_clk_cpu_freq_to_xtal(int freq, int div)
{
    ets_update_cpu_frequency(freq);

    REG_SET_FIELD(APB_CTRL_SYSCLK_CONF_REG, APB_CTRL_PRE_DIV_CNT, div - 1);

    REG_WRITE(APB_CTRL_XTAL_TICK_CONF_REG, freq * MHZ / REF_CLK_FREQ - 1);

    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL, RTC_CNTL_SOC_CLK_SEL_XTL);
    rtc_clk_apb_freq_update(freq * MHZ);

    if (freq <= 2) {
        REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_2M);
    } else {
        REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    }
}
