
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 int av_assert0 (int) ;
 scalar_t__*** bitalloc_bits ;
 size_t* bitalloc_offsets ;
 size_t* bitalloc_sizes ;

uint32_t ff_dca_vlc_calc_quant_bits(int *values, uint8_t n, uint8_t sel, uint8_t table)
{
    uint8_t i, id;
    uint32_t sum = 0;
    for (i = 0; i < n; i++) {
        id = values[i] - bitalloc_offsets[table];
        av_assert0(id < bitalloc_sizes[table]);
        sum += bitalloc_bits[table][sel][id];
    }
    return sum;
}
