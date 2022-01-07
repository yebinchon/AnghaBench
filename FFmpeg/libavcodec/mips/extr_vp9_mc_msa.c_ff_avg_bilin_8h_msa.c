
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int common_hz_2t_and_aver_dst_8x4_msa (int const*,int ,int *,int ,int const*) ;
 int common_hz_2t_and_aver_dst_8x8mult_msa (int const*,int ,int *,int ,int const*,int) ;
 int ** vp9_bilinear_filters_msa ;

void ff_avg_bilin_8h_msa(uint8_t *dst, ptrdiff_t dst_stride,
                         const uint8_t *src, ptrdiff_t src_stride,
                         int height, int mx, int my)
{
    const int8_t *filter = vp9_bilinear_filters_msa[mx - 1];

    if (4 == height) {
        common_hz_2t_and_aver_dst_8x4_msa(src, src_stride, dst, dst_stride,
                                          filter);
    } else {
        common_hz_2t_and_aver_dst_8x8mult_msa(src, src_stride, dst, dst_stride,
                                              filter, height);
    }
}
