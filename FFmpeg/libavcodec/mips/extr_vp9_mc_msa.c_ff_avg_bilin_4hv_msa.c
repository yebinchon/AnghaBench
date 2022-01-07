
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int common_hv_2ht_2vt_and_aver_dst_4x4_msa (int const*,int ,int *,int ,int const*,int const*) ;
 int common_hv_2ht_2vt_and_aver_dst_4x8_msa (int const*,int ,int *,int ,int const*,int const*) ;
 int ** vp9_bilinear_filters_msa ;

void ff_avg_bilin_4hv_msa(uint8_t *dst, ptrdiff_t dst_stride,
                          const uint8_t *src, ptrdiff_t src_stride,
                          int height, int mx, int my)
{
    const int8_t *filter_horiz = vp9_bilinear_filters_msa[mx - 1];
    const int8_t *filter_vert = vp9_bilinear_filters_msa[my - 1];

    if (4 == height) {
        common_hv_2ht_2vt_and_aver_dst_4x4_msa(src, src_stride, dst, dst_stride,
                                               filter_horiz, filter_vert);
    } else if (8 == height) {
        common_hv_2ht_2vt_and_aver_dst_4x8_msa(src, src_stride, dst, dst_stride,
                                               filter_horiz, filter_vert);
    }
}
