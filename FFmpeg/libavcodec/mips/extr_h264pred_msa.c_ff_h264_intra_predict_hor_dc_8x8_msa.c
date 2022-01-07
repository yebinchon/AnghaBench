
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int intra_predict_hor_dc_8x8_msa (int *,int ) ;

void ff_h264_intra_predict_hor_dc_8x8_msa(uint8_t *src, ptrdiff_t stride)
{
    intra_predict_hor_dc_8x8_msa(src, stride);
}
