
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 scalar_t__** bitalloc_12_bits ;

uint32_t ff_dca_vlc_calc_alloc_bits(int *values, uint8_t n, uint8_t sel)
{
    uint8_t i, id;
    uint32_t sum = 0;
    for (i = 0; i < n; i++) {
        id = values[i] - 1;
        sum += bitalloc_12_bits[sel][id];
    }
    return sum;
}
