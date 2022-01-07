
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int8_t ;


 int common_hz_4t_4x16_msa (int *,int ,int *,int ,int const*) ;
 int common_hz_4t_4x4_msa (int *,int ,int *,int ,int const*) ;
 int common_hz_4t_4x8_msa (int *,int ,int *,int ,int const*) ;
 int ** subpel_filters_msa ;

void ff_put_vp8_epel4_h4_msa(uint8_t *dst, ptrdiff_t dst_stride,
                             uint8_t *src, ptrdiff_t src_stride,
                             int height, int mx, int my)
{
    const int8_t *filter = subpel_filters_msa[mx - 1];

    if (4 == height) {
        common_hz_4t_4x4_msa(src, src_stride, dst, dst_stride, filter);
    } else if (8 == height) {
        common_hz_4t_4x8_msa(src, src_stride, dst, dst_stride, filter);
    } else if (16 == height) {
        common_hz_4t_4x16_msa(src, src_stride, dst, dst_stride, filter);
    }
}
