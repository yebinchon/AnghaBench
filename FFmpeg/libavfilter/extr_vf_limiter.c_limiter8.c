
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int av_clip (int const,int,int) ;

__attribute__((used)) static void limiter8(const uint8_t *src, uint8_t *dst,
                     ptrdiff_t slinesize, ptrdiff_t dlinesize,
                     int w, int h, int min, int max)
{
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            dst[x] = av_clip(src[x], min, max);
        }

        dst += dlinesize;
        src += slinesize;
    }
}
