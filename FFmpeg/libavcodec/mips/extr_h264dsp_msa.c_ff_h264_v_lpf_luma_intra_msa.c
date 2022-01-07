
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int avc_loopfilter_luma_intra_edge_hor_msa (int *,int ,int ,unsigned int) ;

void ff_h264_v_lpf_luma_intra_msa(uint8_t *data, int img_width,
                                  int alpha, int beta)
{
    avc_loopfilter_luma_intra_edge_hor_msa(data, (uint8_t) alpha,
                                           (uint8_t) beta,
                                           (unsigned int) img_width);
}
