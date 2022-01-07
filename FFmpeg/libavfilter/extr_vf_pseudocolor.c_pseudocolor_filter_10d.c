
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void pseudocolor_filter_10d(int max, int width, int height,
                                   const uint8_t *index,
                                   const uint8_t *src,
                                   uint8_t *dst,
                                   ptrdiff_t ilinesize,
                                   ptrdiff_t slinesize,
                                   ptrdiff_t dlinesize,
                                   float *lut)
{
    int x, y;

    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            int v = lut[index[x >> 1]];

            if (v >= 0 && v <= max) {
                dst[x] = v;
            } else {
                dst[x] = src[x];
            }
        }
        index += ilinesize;
        src += slinesize;
        dst += dlinesize;
    }
}
