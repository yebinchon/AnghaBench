
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int STORE (int) ;
 int ** dither ;

__attribute__((used)) static void store_slice_c(uint8_t *dst, const uint16_t *src,
                          int dst_stride, int src_stride,
                          int width, int height, int log2_scale)
{
    int y, x;







    for (y = 0; y < height; y++) {
        const uint8_t *d = dither[y&7];
        for (x = 0; x < width; x += 8) {
            int temp;
            do { temp = ((src[x + y * src_stride + 0] << log2_scale) + d[0]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 0] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 1] << log2_scale) + d[1]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 1] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 2] << log2_scale) + d[2]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 2] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 3] << log2_scale) + d[3]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 3] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 4] << log2_scale) + d[4]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 4] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 5] << log2_scale) + d[5]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 5] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 6] << log2_scale) + d[6]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 6] = temp; } while (0);
            do { temp = ((src[x + y * src_stride + 7] << log2_scale) + d[7]) >> 8; if (temp & 0x100) temp = ~(temp >> 31); dst[x + y * dst_stride + 7] = temp; } while (0);
        }
    }
}
