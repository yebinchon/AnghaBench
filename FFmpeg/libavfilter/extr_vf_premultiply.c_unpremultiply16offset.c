
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 unsigned int FFMAX (int const,int ) ;
 int const FFMIN (unsigned int,int) ;

__attribute__((used)) static void unpremultiply16offset(const uint8_t *mmsrc, const uint8_t *aasrc,
                                  uint8_t *ddst,
                                  ptrdiff_t mlinesize, ptrdiff_t alinesize,
                                  ptrdiff_t dlinesize,
                                  int w, int h,
                                  int half, int max, int offset)
{
    const uint16_t *msrc = (const uint16_t *)mmsrc;
    const uint16_t *asrc = (const uint16_t *)aasrc;
    uint16_t *dst = (uint16_t *)ddst;
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            if (asrc[x] > 0 && asrc[x] < max)
                dst[x] = FFMAX(FFMIN(FFMAX(msrc[x] - offset, 0) * (unsigned)max / asrc[x] + offset, max), 0);
            else
                dst[x] = msrc[x];
        }

        dst += dlinesize / 2;
        msrc += mlinesize / 2;
        asrc += alinesize / 2;
    }
}
