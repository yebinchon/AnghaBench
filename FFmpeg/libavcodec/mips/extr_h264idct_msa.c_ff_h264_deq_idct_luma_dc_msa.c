
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int avc_deq_idct_luma_dc_msa (int *,int *,int ) ;

void ff_h264_deq_idct_luma_dc_msa(int16_t *dst, int16_t *src,
                                  int32_t de_qval)
{
    avc_deq_idct_luma_dc_msa(dst, src, de_qval);
}
