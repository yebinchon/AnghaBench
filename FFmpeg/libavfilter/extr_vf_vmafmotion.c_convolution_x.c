
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;


 int BIT_SHIFT ;
 int FFABS (int) ;

__attribute__((used)) static void convolution_x(const uint16_t *filter, int filt_w, const uint16_t *src,
                          uint16_t *dst, int w, int h, ptrdiff_t _src_stride,
                          ptrdiff_t _dst_stride)
{
    ptrdiff_t src_stride = _src_stride / sizeof(*src);
    ptrdiff_t dst_stride = _dst_stride / sizeof(*dst);
    int radius = filt_w / 2;
    int borders_left = radius;
    int borders_right = w - (filt_w - radius);
    int i, j, k;
    int sum = 0;

    for (i = 0; i < h; i++) {
        for (j = 0; j < borders_left; j++) {
            sum = 0;
            for (k = 0; k < filt_w; k++) {
                int j_tap = FFABS(j - radius + k);
                if (j_tap >= w) {
                    j_tap = w - (j_tap - w + 1);
                }
                sum += filter[k] * src[i * src_stride + j_tap];
            }
            dst[i * dst_stride + j] = sum >> BIT_SHIFT;
        }

        for (j = borders_left; j < borders_right; j++) {
            int sum = 0;
            for (k = 0; k < filt_w; k++) {
                sum += filter[k] * src[i * src_stride + j - radius + k];
            }
            dst[i * dst_stride + j] = sum >> BIT_SHIFT;
        }

        for (j = borders_right; j < w; j++) {
            sum = 0;
            for (k = 0; k < filt_w; k++) {
                int j_tap = FFABS(j - radius + k);
                if (j_tap >= w) {
                    j_tap = w - (j_tap - w + 1);
                }
                sum += filter[k] * src[i * src_stride + j_tap];
            }
            dst[i * dst_stride + j] = sum >> BIT_SHIFT;
        }
    }
}
