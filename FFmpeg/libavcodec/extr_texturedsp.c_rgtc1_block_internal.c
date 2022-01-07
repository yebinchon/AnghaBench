
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int rgtc_block_internal (int*,int ,int const*,int*,int,int,int) ;

__attribute__((used)) static inline void rgtc1_block_internal(uint8_t *dst, ptrdiff_t stride,
                                        const uint8_t *block, int sign, int mono, int offset, int pix_size)
{
    int color_table[8];
    int r0, r1;

    if (sign) {


        r0 = ((int8_t) block[0]) + 128;
        r1 = ((int8_t) block[1]) + 128;
    } else {
        r0 = block[0];
        r1 = block[1];
    }

    color_table[0] = r0;
    color_table[1] = r1;

    if (r0 > r1) {

        color_table[2] = (6 * r0 + 1 * r1) / 7;
        color_table[3] = (5 * r0 + 2 * r1) / 7;
        color_table[4] = (4 * r0 + 3 * r1) / 7;
        color_table[5] = (3 * r0 + 4 * r1) / 7;
        color_table[6] = (2 * r0 + 5 * r1) / 7;
        color_table[7] = (1 * r0 + 6 * r1) / 7;
    } else {

        color_table[2] = (4 * r0 + 1 * r1) / 5;
        color_table[3] = (3 * r0 + 2 * r1) / 5;
        color_table[4] = (2 * r0 + 3 * r1) / 5;
        color_table[5] = (1 * r0 + 4 * r1) / 5;
        color_table[6] = 0;
        color_table[7] = 255;
    }

    rgtc_block_internal(dst, stride, block, color_table, mono, offset, pix_size);
}
