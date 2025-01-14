
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int const rtc_cpu_freq_t ;


 int DPORT_CPUPERIOD_SEL ;
 int DPORT_CPU_PER_CONF_REG ;
 int DPORT_REG_GET_FIELD (int ,int ) ;
 int REG_GET_FIELD (int ,int ) ;
 int const RTC_CPU_FREQ_160M ;
 int const RTC_CPU_FREQ_240M ;
 int const RTC_CPU_FREQ_2M ;
 int const RTC_CPU_FREQ_80M ;
 int const RTC_CPU_FREQ_XTAL ;
 int SYSCON_PRE_DIV_CNT ;
 int SYSCON_SOC_CLK_SEL ;




 int SYSCON_SYSCLK_CONF_REG ;
 int assert (int ) ;
 int rtc_clk_xtal_freq_get () ;

rtc_cpu_freq_t rtc_clk_cpu_freq_get(void)
{
    uint32_t soc_clk_sel = REG_GET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_SOC_CLK_SEL);
    switch (soc_clk_sel) {
        case 128: {
            uint32_t pre_div = REG_GET_FIELD(SYSCON_SYSCLK_CONF_REG, SYSCON_PRE_DIV_CNT);
            if (pre_div == 0) {
                return RTC_CPU_FREQ_XTAL;
            } else if (pre_div == rtc_clk_xtal_freq_get() / 2 - 1) {
                return RTC_CPU_FREQ_2M;
            } else {
                assert(0 && "unsupported frequency");
            }
            break;
        }
        case 129: {
            uint32_t cpuperiod_sel = DPORT_REG_GET_FIELD(DPORT_CPU_PER_CONF_REG, DPORT_CPUPERIOD_SEL);
            if (cpuperiod_sel == 0) {
                return RTC_CPU_FREQ_80M;
            } else if (cpuperiod_sel == 1) {
                return RTC_CPU_FREQ_160M;
            } else if (cpuperiod_sel == 2) {
                return RTC_CPU_FREQ_240M;
            } else {
                assert(0 && "unsupported frequency");
            }
            break;
        }
        case 130:
        case 131:
        default:
            assert(0 && "unsupported frequency");
    }
    return 128;
}
