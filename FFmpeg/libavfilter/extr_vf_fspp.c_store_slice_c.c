
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int STORE (int) ;
 int ** dither ;

__attribute__((used)) static void store_slice_c(uint8_t *dst, int16_t *src,
                          ptrdiff_t dst_stride, ptrdiff_t src_stride,
                          ptrdiff_t width, ptrdiff_t height, ptrdiff_t log2_scale)
{
    int y, x;






    for (y = 0; y < height; y++) {
        const uint8_t *d = dither[y];
        for (x = 0; x < width; x += 8) {
            int temp;
            temp = (src[x + 0] + (d[0] >> log2_scale)) >> (6 - log2_scale); src[x + 0] = src[x + 0 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 0] = temp;;
            temp = (src[x + 1] + (d[1] >> log2_scale)) >> (6 - log2_scale); src[x + 1] = src[x + 1 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 1] = temp;;
            temp = (src[x + 2] + (d[2] >> log2_scale)) >> (6 - log2_scale); src[x + 2] = src[x + 2 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 2] = temp;;
            temp = (src[x + 3] + (d[3] >> log2_scale)) >> (6 - log2_scale); src[x + 3] = src[x + 3 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 3] = temp;;
            temp = (src[x + 4] + (d[4] >> log2_scale)) >> (6 - log2_scale); src[x + 4] = src[x + 4 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 4] = temp;;
            temp = (src[x + 5] + (d[5] >> log2_scale)) >> (6 - log2_scale); src[x + 5] = src[x + 5 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 5] = temp;;
            temp = (src[x + 6] + (d[6] >> log2_scale)) >> (6 - log2_scale); src[x + 6] = src[x + 6 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 6] = temp;;
            temp = (src[x + 7] + (d[7] >> log2_scale)) >> (6 - log2_scale); src[x + 7] = src[x + 7 - 8 * src_stride] = 0; if (temp & 0x100) temp = ~(temp >> 31); dst[x + 7] = temp;;
        }
        src += src_stride;
        dst += dst_stride;
    }
}
