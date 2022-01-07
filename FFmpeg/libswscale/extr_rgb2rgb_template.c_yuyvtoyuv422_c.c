
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_CEIL_RSHIFT (int,int) ;
 int extract_even_c (int const*,int *,int) ;
 int extract_odd2_c (int const*,int *,int *,int const) ;

__attribute__((used)) static void yuyvtoyuv422_c(uint8_t *ydst, uint8_t *udst, uint8_t *vdst,
                           const uint8_t *src, int width, int height,
                           int lumStride, int chromStride, int srcStride)
{
    int y;
    const int chromWidth = AV_CEIL_RSHIFT(width, 1);

    for (y = 0; y < height; y++) {
        extract_even_c(src, ydst, width);
        extract_odd2_c(src, udst, vdst, chromWidth);

        src += srcStride;
        ydst += lumStride;
        udst += chromStride;
        vdst += chromStride;
    }
}
