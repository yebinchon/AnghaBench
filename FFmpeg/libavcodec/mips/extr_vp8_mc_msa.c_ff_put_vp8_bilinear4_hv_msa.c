
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int ** bilinear_filters_msa ;
 int common_hv_2ht_2vt_4x4_msa (int *,int ,int *,int ,int const*,int const*) ;
 int common_hv_2ht_2vt_4x8_msa (int *,int ,int *,int ,int const*,int const*) ;

void ff_put_vp8_bilinear4_hv_msa(uint8_t *dst, ptrdiff_t dst_stride,
                                 uint8_t *src, ptrdiff_t src_stride,
                                 int height, int mx, int my)
{
    const int8_t *filter_horiz = bilinear_filters_msa[mx - 1];
    const int8_t *filter_vert = bilinear_filters_msa[my - 1];

    if (4 == height) {
        common_hv_2ht_2vt_4x4_msa(src, src_stride, dst, dst_stride,
                                  filter_horiz, filter_vert);
    } else if (8 == height) {
        common_hv_2ht_2vt_4x8_msa(src, src_stride, dst, dst_stride,
                                  filter_horiz, filter_vert);
    }
}
