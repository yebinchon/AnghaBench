
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;



__attribute__((used)) static inline void yuvPlanartoyuy2_c(const uint8_t *ysrc, const uint8_t *usrc,
                                     const uint8_t *vsrc, uint8_t *dst,
                                     int width, int height,
                                     int lumStride, int chromStride,
                                     int dstStride, int vertLumPerChroma)
{
    int y, i;
    const int chromWidth = width >> 1;

    for (y = 0; y < height; y++) {
        int *idst = (int32_t *)dst;
        const uint8_t *yc = ysrc, *uc = usrc, *vc = vsrc;

        for (i = 0; i < chromWidth; i++) {




            *idst++ = yc[0] + (uc[0] << 8) +
                      (yc[1] << 16) + (vc[0] << 24);

            yc += 2;
            uc++;
            vc++;
        }

        if ((y & (vertLumPerChroma - 1)) == vertLumPerChroma - 1) {
            usrc += chromStride;
            vsrc += chromStride;
        }
        ysrc += lumStride;
        dst += dstStride;
    }
}
