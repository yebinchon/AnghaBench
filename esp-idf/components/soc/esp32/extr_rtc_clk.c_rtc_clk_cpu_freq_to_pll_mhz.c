
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIG_DBIAS_240M ;
 int DIG_DBIAS_80M_160M ;
 int DPORT_CPUPERIOD_SEL_160 ;
 int DPORT_CPUPERIOD_SEL_240 ;
 int DPORT_CPUPERIOD_SEL_80 ;
 int DPORT_CPU_PER_CONF_REG ;
 int DPORT_REG_WRITE (int ,int) ;
 int MHZ ;
 int REG_SET_FIELD (int ,int ,int) ;
 int RTC_CNTL_CLK_CONF_REG ;
 int RTC_CNTL_DIG_DBIAS_WAK ;
 int RTC_CNTL_REG ;
 int RTC_CNTL_SOC_CLK_SEL ;
 int RTC_CNTL_SOC_CLK_SEL_PLL ;
 int SOC_LOGE (int ,char*) ;
 int TAG ;
 int abort () ;
 int ets_update_cpu_frequency (int) ;
 int rtc_clk_apb_freq_update (int) ;
 int rtc_clk_wait_for_slow_cycle () ;

__attribute__((used)) static void rtc_clk_cpu_freq_to_pll_mhz(int cpu_freq_mhz)
{
    int dbias = DIG_DBIAS_80M_160M;
    int per_conf = DPORT_CPUPERIOD_SEL_80;
    if (cpu_freq_mhz == 80) {

    } else if (cpu_freq_mhz == 160) {
        per_conf = DPORT_CPUPERIOD_SEL_160;
    } else if (cpu_freq_mhz == 240) {
        dbias = DIG_DBIAS_240M;
        per_conf = DPORT_CPUPERIOD_SEL_240;
    } else {
        SOC_LOGE(TAG, "invalid frequency");
        abort();
    }
    DPORT_REG_WRITE(DPORT_CPU_PER_CONF_REG, per_conf);
    REG_SET_FIELD(RTC_CNTL_REG, RTC_CNTL_DIG_DBIAS_WAK, dbias);
    REG_SET_FIELD(RTC_CNTL_CLK_CONF_REG, RTC_CNTL_SOC_CLK_SEL, RTC_CNTL_SOC_CLK_SEL_PLL);
    rtc_clk_apb_freq_update(80 * MHZ);
    ets_update_cpu_frequency(cpu_freq_mhz);
    rtc_clk_wait_for_slow_cycle();
}
