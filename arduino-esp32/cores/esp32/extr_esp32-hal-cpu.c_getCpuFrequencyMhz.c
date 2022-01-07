
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int freq_mhz; } ;
typedef TYPE_1__ rtc_cpu_freq_config_t ;


 int rtc_clk_cpu_freq_get_config (TYPE_1__*) ;

uint32_t getCpuFrequencyMhz(){
    rtc_cpu_freq_config_t conf;
    rtc_clk_cpu_freq_get_config(&conf);
    return conf.freq_mhz;
}
