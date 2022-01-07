
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int av_log2 (int) ;
 int* tab_log2 ;

int ff_log2_q15(uint32_t value)
{
    uint8_t power_int;
    uint8_t frac_x0;
    uint16_t frac_dx;


    power_int = av_log2(value);
    value <<= (31 - power_int);


    frac_x0 = (value & 0x7c000000) >> 26;
    frac_dx = (value & 0x03fff800) >> 11;

    value = tab_log2[frac_x0];
    value += (frac_dx * (tab_log2[frac_x0+1] - tab_log2[frac_x0])) >> 15;

    return (power_int << 15) + value;
}
