
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;



__attribute__((used)) static void maskedmerge16(const uint8_t *bbsrc, const uint8_t *oosrc,
                          const uint8_t *mmsrc, uint8_t *ddst,
                          ptrdiff_t blinesize, ptrdiff_t olinesize,
                          ptrdiff_t mlinesize, ptrdiff_t dlinesize,
                          int w, int h,
                          int half, int shift)
{
    const uint16_t *bsrc = (const uint16_t *)bbsrc;
    const uint16_t *osrc = (const uint16_t *)oosrc;
    const uint16_t *msrc = (const uint16_t *)mmsrc;
    uint16_t *dst = (uint16_t *)ddst;
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            dst[x] = bsrc[x] + ((msrc[x] * (osrc[x] - bsrc[x]) + half) >> shift);
        }

        dst += dlinesize / 2;
        bsrc += blinesize / 2;
        osrc += olinesize / 2;
        msrc += mlinesize / 2;
    }
}
