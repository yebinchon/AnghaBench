
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int intra_predict_129dc_16x16_msa (int *,int ) ;

void ff_vp8_pred16x16_129_dc_8_msa(uint8_t *src, ptrdiff_t stride)
{
    intra_predict_129dc_16x16_msa(src, stride);
}
