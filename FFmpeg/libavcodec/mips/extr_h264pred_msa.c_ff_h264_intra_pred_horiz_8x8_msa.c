
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int intra_predict_horiz_8x8_msa (int *,int ,int *,int ) ;

void ff_h264_intra_pred_horiz_8x8_msa(uint8_t *src, ptrdiff_t stride)
{
    uint8_t *dst = src;

    intra_predict_horiz_8x8_msa(src - 1, stride, dst, stride);
}
