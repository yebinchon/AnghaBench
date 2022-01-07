
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int copy_block16_mmi (int *,int const*,int,int,int) ;
 int ff_avg_pixels16_l2_8_mmi (int *,int * const,int *,int,int,int,int) ;
 int put_h264_qpel16_v_lowpass_mmi (int *,int * const,int,int) ;

void ff_avg_h264_qpel16_mc03_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t full[336];
    uint8_t * const full_mid= full + 32;
    uint8_t half[256];
    copy_block16_mmi(full, src - stride*2, 16, stride, 21);
    put_h264_qpel16_v_lowpass_mmi(half, full_mid, 16, 16);
    ff_avg_pixels16_l2_8_mmi(dst, full_mid+16, half, stride, 16, 16, 16);
}
