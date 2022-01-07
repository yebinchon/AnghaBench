
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avc_wgt_4x2_msa (int *,int ,int,int,int) ;
 int avc_wgt_4x4_msa (int *,int ,int,int,int) ;
 int avc_wgt_4x8_msa (int *,int ,int,int,int) ;

void ff_weight_h264_pixels4_8_msa(uint8_t *src, ptrdiff_t stride,
                                  int height, int log2_denom,
                                  int weight_src, int offset)
{
    if (2 == height) {
        avc_wgt_4x2_msa(src, stride, log2_denom, weight_src, offset);
    } else if (4 == height) {
        avc_wgt_4x4_msa(src, stride, log2_denom, weight_src, offset);
    } else {
        avc_wgt_4x8_msa(src, stride, log2_denom, weight_src, offset);
    }
}
