
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static void scale_block_c(const uint8_t src[64] , uint8_t *dst , int linesize)
{
    int i, j;
    uint16_t *dst1 = (uint16_t *) dst;
    uint16_t *dst2 = (uint16_t *)(dst + linesize);

    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++) {
            dst1[i] = dst2[i] = src[i] * 0x0101;
        }
        src += 8;
        dst1 += linesize;
        dst2 += linesize;
    }
}
