
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int* ff_square_tab ;

__attribute__((used)) static int pix_norm1_c(uint8_t *pix, int line_size)
{
    int s = 0, i, j;
    const uint32_t *sq = ff_square_tab + 256;

    for (i = 0; i < 16; i++) {
        for (j = 0; j < 16; j += 8) {
            register uint32_t x = *(uint32_t *) pix;
            s += sq[x & 0xff];
            s += sq[(x >> 8) & 0xff];
            s += sq[(x >> 16) & 0xff];
            s += sq[(x >> 24) & 0xff];
            x = *(uint32_t *) (pix + 4);
            s += sq[x & 0xff];
            s += sq[(x >> 8) & 0xff];
            s += sq[(x >> 16) & 0xff];
            s += sq[(x >> 24) & 0xff];

            pix += 8;
        }
        pix += line_size - 16;
    }
    return s;
}
