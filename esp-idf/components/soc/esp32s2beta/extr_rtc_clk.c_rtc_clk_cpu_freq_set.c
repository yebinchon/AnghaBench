
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_xtal_freq_t ;
typedef scalar_t__ rtc_cpu_freq_t ;


 int CLEAR_PERI_REG_MASK (int ,int) ;
 int DIG_DBIAS_240M ;
 int DIG_DBIAS_2M ;
 int DIG_DBIAS_80M_160M ;
 int DIG_DBIAS_XTAL ;
 int DPORT_CPUPERIOD_SEL ;
 int DPORT_CPU_PER_CONF_REG ;
 int DPORT_REG_SET_FIELD (int ,int ,int) ;
 int MHZ ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_BBPLL_FORCE_PD ;
 int RTC_CNTL_BBPLL_I2C_FORCE_PD ;
 int RTC_CNTL_BB_I2C_FORCE_PD ;
 int RTC_CNTL_DIG_DBIAS_WAK ;
 int RTC_CNTL_OPTIONS0_REG ;
 int RTC_CNTL_REG ;
 scalar_t__ RTC_CPU_320M_160M ;
 scalar_t__ RTC_CPU_320M_80M ;
 scalar_t__ RTC_CPU_FREQ_160M ;
 scalar_t__ RTC_CPU_FREQ_240M ;
 scalar_t__ RTC_CPU_FREQ_2M ;
 scalar_t__ RTC_CPU_FREQ_80M ;
 scalar_t__ RTC_CPU_FREQ_XTAL ;
 int RTC_PLL_320M ;
 int RTC_PLL_480M ;
 int RTC_PLL_NONE ;
 int SET_PERI_REG_MASK (int ,int) ;
 int SYSCON_PRE_DIV_CNT ;
 int SYSCON_SOC_CLK_SEL ;
 int SYSCON_SOC_CLK_SEL_PLL ;
 int SYSCON_SOC_CLK_SEL_XTL ;
 int SYSCON_SYSCLK_CONF_REG ;
 int ets_update_cpu_frequency (int) ;
 int rtc_clk_apb_freq_update (int) ;
 int rtc_clk_bbpll_set (int,int ) ;
 int rtc_clk_xtal_freq_get () ;
 scalar_t__ s_cur_freq ;
 int s_cur_pll ;

void rtc_clk_cpu_freq_set(rtc_cpu_freq_t cpu_freq)
{
    rtc_xtal_freq_t xtal_freq = rtc_clk_xtal_freq_get();

    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_XTAL);
    REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL, SYSCON_SOC_CLK_SEL_XTL);
    REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT, 0);
    ets_update_cpu_frequency(xtal_freq);






    DPORT_REG_SET_FIELD(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 0);


    SET_PERI_REG_MASK(RTC_CNTL_OPTIONS0_REG,
            RTC_CNTL_BB_I2C_FORCE_PD | RTC_CNTL_BBPLL_FORCE_PD |
            RTC_CNTL_BBPLL_I2C_FORCE_PD);
    s_cur_pll = RTC_PLL_NONE;
    rtc_clk_apb_freq_update(xtal_freq * MHZ);
    if (cpu_freq == RTC_CPU_FREQ_XTAL) {

    } else if (cpu_freq == RTC_CPU_FREQ_2M) {

        REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT, (xtal_freq / 2) - 1);
        ets_update_cpu_frequency(2);
        rtc_clk_apb_freq_update(2 * MHZ);

        REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_2M);
    } else {

        CLEAR_PERI_REG_MASK(RTC_CNTL_OPTIONS0_REG,
                RTC_CNTL_BB_I2C_FORCE_PD |
                RTC_CNTL_BBPLL_FORCE_PD | RTC_CNTL_BBPLL_I2C_FORCE_PD);
        if (cpu_freq > RTC_CPU_FREQ_2M) {
            rtc_clk_bbpll_set(xtal_freq, RTC_PLL_320M);
            s_cur_pll = RTC_PLL_320M;
        } else {
            rtc_clk_bbpll_set(xtal_freq, RTC_PLL_480M);
            s_cur_pll = RTC_PLL_480M;
        }

        if ((cpu_freq == RTC_CPU_FREQ_80M) || (cpu_freq == RTC_CPU_320M_80M)) {
            REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
            DPORT_REG_SET_FIELD(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 0);
            ets_update_cpu_frequency(80);
        } else if ((cpu_freq == RTC_CPU_FREQ_160M) || (cpu_freq == RTC_CPU_320M_160M)) {
            REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_80M_160M);
            DPORT_REG_SET_FIELD(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 1);
            ets_update_cpu_frequency(160);
        } else if (cpu_freq == RTC_CPU_FREQ_240M) {
            REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, DIG_DBIAS_240M);
            DPORT_REG_SET_FIELD(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL, 2);
            ets_update_cpu_frequency(240);
        }
        REG_SET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL, SYSCON_SOC_CLK_SEL_PLL);

        rtc_clk_apb_freq_update(80 * MHZ);
    }
    s_cur_freq = cpu_freq;
}
