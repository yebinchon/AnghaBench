
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int FREQ_BITS ;
 unsigned int LUT_BITS ;
 unsigned int LUT_SIZE ;
 unsigned int** cf_table ;

__attribute__((used)) static void bgmc_lut_fillp(uint8_t *lut, int *lut_status, int delta)
{
    unsigned int sx, i;

    for (sx = 0; sx < 16; sx++)
        for (i = 0; i < LUT_SIZE; i++) {
            unsigned int target = (i + 1) << (FREQ_BITS - LUT_BITS);
            unsigned int symbol = 1 << delta;

            while (cf_table[sx][symbol] > target)
                symbol += 1 << delta;

            *lut++ = symbol >> delta;
        }

    *lut_status = delta;
}
