
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int MAX_BLOCKSIZE ;

__attribute__((used)) static void add_dc(uint16_t *dst, int dc, int stride,
                   uint8_t *obmc_weight, int xblen, int yblen)
{
    int x, y;
    dc += 128;

    for (y = 0; y < yblen; y++) {
        for (x = 0; x < xblen; x += 2) {
            dst[x ] += dc * obmc_weight[x ];
            dst[x+1] += dc * obmc_weight[x+1];
        }
        dst += stride;
        obmc_weight += MAX_BLOCKSIZE;
    }
}
