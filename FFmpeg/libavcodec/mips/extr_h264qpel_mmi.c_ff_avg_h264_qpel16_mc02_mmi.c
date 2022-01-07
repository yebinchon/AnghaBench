
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avg_h264_qpel16_v_lowpass_mmi (int *,int * const,int,int) ;
 int copy_block16_mmi (int *,int const*,int,int,int) ;

void ff_avg_h264_qpel16_mc02_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t full[336];
    uint8_t * const full_mid= full + 32;
    copy_block16_mmi(full, src - stride*2, 16, stride, 21);
    avg_h264_qpel16_v_lowpass_mmi(dst, full_mid, stride, 16);
}
