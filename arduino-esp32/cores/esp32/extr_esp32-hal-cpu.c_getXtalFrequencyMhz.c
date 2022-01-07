
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int rtc_clk_xtal_freq_get () ;

uint32_t getXtalFrequencyMhz(){
    return rtc_clk_xtal_freq_get();
}
