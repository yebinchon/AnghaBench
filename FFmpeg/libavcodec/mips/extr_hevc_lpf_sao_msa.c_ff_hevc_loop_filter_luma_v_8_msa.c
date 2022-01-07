
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 int hevc_loopfilter_luma_ver_msa (int *,int ,int ,int *,int *,int *) ;

void ff_hevc_loop_filter_luma_v_8_msa(uint8_t *src,
                                      ptrdiff_t src_stride,
                                      int32_t beta, int32_t *tc,
                                      uint8_t *no_p, uint8_t *no_q)
{
    hevc_loopfilter_luma_ver_msa(src, src_stride, beta, tc, no_p, no_q);
}
