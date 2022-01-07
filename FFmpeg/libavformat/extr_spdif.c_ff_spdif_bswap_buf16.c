
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int av_bswap16 (int const) ;

void ff_spdif_bswap_buf16(uint16_t *dst, const uint16_t *src, int w)
{
    int i;

    for (i = 0; i + 8 <= w; i += 8) {
        dst[i + 0] = av_bswap16(src[i + 0]);
        dst[i + 1] = av_bswap16(src[i + 1]);
        dst[i + 2] = av_bswap16(src[i + 2]);
        dst[i + 3] = av_bswap16(src[i + 3]);
        dst[i + 4] = av_bswap16(src[i + 4]);
        dst[i + 5] = av_bswap16(src[i + 5]);
        dst[i + 6] = av_bswap16(src[i + 6]);
        dst[i + 7] = av_bswap16(src[i + 7]);
    }
    for (; i < w; i++)
        dst[i + 0] = av_bswap16(src[i + 0]);
}
