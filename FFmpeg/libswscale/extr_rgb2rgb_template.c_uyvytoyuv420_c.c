
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_CEIL_RSHIFT (int,int) ;
 int extract_even2avg_c (int const*,int const*,int *,int *,int const) ;
 int extract_even_c (int const*,int *,int) ;

__attribute__((used)) static void uyvytoyuv420_c(uint8_t *ydst, uint8_t *udst, uint8_t *vdst,
                           const uint8_t *src, int width, int height,
                           int lumStride, int chromStride, int srcStride)
{
    int y;
    const int chromWidth = AV_CEIL_RSHIFT(width, 1);

    for (y = 0; y < height; y++) {
        extract_even_c(src + 1, ydst, width);
        if (y & 1) {
            extract_even2avg_c(src - srcStride, src, udst, vdst, chromWidth);
            udst += chromStride;
            vdst += chromStride;
        }

        src += srcStride;
        ydst += lumStride;
    }
}
