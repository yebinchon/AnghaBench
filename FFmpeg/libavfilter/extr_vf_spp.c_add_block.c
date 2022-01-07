
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;



__attribute__((used)) static inline void add_block(uint16_t *dst, int linesize, const int16_t block[64])
{
    int y;

    for (y = 0; y < 8; y++) {
        *(uint32_t *)&dst[0 + y*linesize] += *(uint32_t *)&block[0 + y*8];
        *(uint32_t *)&dst[2 + y*linesize] += *(uint32_t *)&block[2 + y*8];
        *(uint32_t *)&dst[4 + y*linesize] += *(uint32_t *)&block[4 + y*8];
        *(uint32_t *)&dst[6 + y*linesize] += *(uint32_t *)&block[6 + y*8];
    }
}
