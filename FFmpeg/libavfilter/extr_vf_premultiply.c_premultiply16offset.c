
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int const int64_t ;



__attribute__((used)) static void premultiply16offset(const uint8_t *mmsrc, const uint8_t *aasrc,
                                uint8_t *ddst,
                                ptrdiff_t mlinesize, ptrdiff_t alinesize,
                                ptrdiff_t dlinesize,
                                int w, int h,
                                int half, int shift, int offset)
{
    const uint16_t *msrc = (const uint16_t *)mmsrc;
    const uint16_t *asrc = (const uint16_t *)aasrc;
    uint16_t *dst = (uint16_t *)ddst;
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            dst[x] = ((((msrc[x] - offset) * (int64_t)(((asrc[x] >> 1) & 1) + asrc[x])) + half) >> shift) + offset;
        }

        dst += dlinesize / 2;
        msrc += mlinesize / 2;
        asrc += alinesize / 2;
    }
}
