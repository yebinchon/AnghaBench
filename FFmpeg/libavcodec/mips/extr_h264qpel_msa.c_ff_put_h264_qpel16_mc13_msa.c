
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avc_luma_hv_qrt_16x16_msa (int const*,int const*,int *,int) ;

void ff_put_h264_qpel16_mc13_msa(uint8_t *dst, const uint8_t *src,
                                 ptrdiff_t stride)
{
    avc_luma_hv_qrt_16x16_msa(src + stride - 2, src - (stride * 2), dst,
                              stride);
}
