
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_xtal_freq_t ;


 int DIG_DBIAS_XTAL ;
 int MHZ ;
 int REG_SET_FIELD (int ,int ,int ) ;
 int RTC_CNTL_DIG_DBIAS_WAK ;
 int RTC_CNTL_REG ;
 int RTC_CPU_FREQ_XTAL ;
 int RTC_PLL_NONE ;
 int SYSCON_PRE_DIV_CNT ;
 int SYSCON_SOC_CLK_SEL ;
 int SYSCON_SOC_CLK_SEL_XTL ;
 int SYSCON_SYSCLK_CONF_REG ;
 int ets_update_cpu_frequency (int) ;
 int rtc_clk_apb_freq_update (int) ;
 int rtc_clk_xtal_freq_get () ;
 int s_cur_freq ;
 int s_cur_pll ;

__attribute__((used)) static void rtc_clk_cpu_freq_to_xtal(void)
{
    rtc_xtal_freq_t xtal_freq = rtc_clk_xtal_freq_get();
    ets_update_cpu_frequency(xtal_freq);
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT, 0);
    REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL, SYSCON_SOC_CLK_SEL_XTL);



    rtc_clk_apb_freq_update(xtal_freq * MHZ);
    s_cur_freq = RTC_CPU_FREQ_XTAL;
    s_cur_pll = RTC_PLL_NONE;
}
