
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int common_vt_2t_and_aver_dst_4x4_msa (int const*,int ,int *,int ,int const*) ;
 int common_vt_2t_and_aver_dst_4x8_msa (int const*,int ,int *,int ,int const*) ;
 int ** vp9_bilinear_filters_msa ;

void ff_avg_bilin_4v_msa(uint8_t *dst, ptrdiff_t dst_stride,
                         const uint8_t *src, ptrdiff_t src_stride,
                         int height, int mx, int my)
{
    const int8_t *filter = vp9_bilinear_filters_msa[my - 1];

    if (4 == height) {
        common_vt_2t_and_aver_dst_4x4_msa(src, src_stride, dst, dst_stride,
                                          filter);
    } else if (8 == height) {
        common_vt_2t_and_aver_dst_4x8_msa(src, src_stride, dst, dst_stride,
                                          filter);
    }
}
