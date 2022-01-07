
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;


 int avc_idct8_addblk_msa (int *,int *,int ) ;

void ff_h264_idct8_addblk_msa(uint8_t *dst, int16_t *src,
                              int32_t dst_stride)
{
    avc_idct8_addblk_msa(dst, src, dst_stride);
}
