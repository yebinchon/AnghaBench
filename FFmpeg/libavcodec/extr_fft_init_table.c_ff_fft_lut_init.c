
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



void ff_fft_lut_init(uint16_t *table, int off, int size, int *index)
{
    if (size < 16) {
        table[*index] = off >> 2;
        (*index)++;
    }
    else {
        ff_fft_lut_init(table, off, size>>1, index);
        ff_fft_lut_init(table, off+(size>>1), size>>2, index);
        ff_fft_lut_init(table, off+3*(size>>2), size>>2, index);
    }
}
