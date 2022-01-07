
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int freq_mhz; int source_freq_mhz; int div; } ;
typedef TYPE_1__ rtc_cpu_freq_config_t ;


 int MHZ ;

__attribute__((used)) static uint32_t calculateApb(rtc_cpu_freq_config_t * conf){
    if(conf->freq_mhz >= 80){
        return 80 * MHZ;
    }
    return (conf->source_freq_mhz * MHZ) / conf->div;
}
