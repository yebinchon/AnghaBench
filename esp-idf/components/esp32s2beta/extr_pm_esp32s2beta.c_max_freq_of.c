
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtc_cpu_freq_t ;


 int MAX (int,int) ;
 int RTC_CPU_FREQ_XTAL ;
 int assert (int ) ;
 int rtc_clk_cpu_freq_from_mhz (int,int *) ;
 int rtc_clk_cpu_freq_value (int ) ;

__attribute__((used)) static rtc_cpu_freq_t max_freq_of(rtc_cpu_freq_t f1, rtc_cpu_freq_t f2)
{
    int f1_hz = rtc_clk_cpu_freq_value(f1);
    int f2_hz = rtc_clk_cpu_freq_value(f2);
    int f_max_hz = MAX(f1_hz, f2_hz);
    rtc_cpu_freq_t result = RTC_CPU_FREQ_XTAL;
    if (!rtc_clk_cpu_freq_from_mhz(f_max_hz/1000000, &result)) {
        assert(0 && "unsupported frequency");
    }
    return result;
}
