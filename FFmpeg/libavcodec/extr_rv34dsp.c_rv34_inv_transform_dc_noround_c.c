
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void rv34_inv_transform_dc_noround_c(int16_t *block)
{
    int16_t dc = (13 * 13 * 3 * block[0]) >> 11;
    int i, j;

    for (i = 0; i < 4; i++, block += 4)
        for (j = 0; j < 4; j++)
            block[j] = dc;
}
