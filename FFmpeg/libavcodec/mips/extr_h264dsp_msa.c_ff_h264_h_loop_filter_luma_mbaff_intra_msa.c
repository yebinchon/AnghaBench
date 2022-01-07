
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int avc_h_loop_filter_luma_mbaff_intra_msa (int *,int ,int ,int ) ;

void ff_h264_h_loop_filter_luma_mbaff_intra_msa(uint8_t *src,
                                                int32_t ystride,
                                                int32_t alpha,
                                                int32_t beta)
{
    avc_h_loop_filter_luma_mbaff_intra_msa(src, ystride, alpha, beta);
}
