
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int av_clip (int const,int,int) ;

__attribute__((used)) static void limiter16(const uint8_t *ssrc, uint8_t *ddst,
                      ptrdiff_t slinesize, ptrdiff_t dlinesize,
                      int w, int h, int min, int max)
{
    const uint16_t *src = (const uint16_t *)ssrc;
    uint16_t *dst = (uint16_t *)ddst;
    int x, y;

    dlinesize /= 2;
    slinesize /= 2;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            dst[x] = av_clip(src[x], min, max);
        }

        dst += dlinesize;
        src += slinesize;
    }
}
