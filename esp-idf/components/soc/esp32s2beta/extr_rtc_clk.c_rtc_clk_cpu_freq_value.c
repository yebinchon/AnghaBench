
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rtc_cpu_freq_t ;


 int MHZ ;







 int assert (int ) ;
 int rtc_clk_xtal_freq_get () ;

uint32_t rtc_clk_cpu_freq_value(rtc_cpu_freq_t cpu_freq)
{
    switch (cpu_freq) {
        case 128:
            return ((uint32_t) rtc_clk_xtal_freq_get()) * MHZ;
        case 130:
            return 2 * MHZ;
        case 129:
            return 80 * MHZ;
        case 132:
            return 160 * MHZ;
        case 131:
            return 240 * MHZ;
        case 133:
            return 80 * MHZ;
        case 134:
            return 160 * MHZ;
        default:
            assert(0 && "invalid rtc_cpu_freq_t value");
            return 0;
    }
}
