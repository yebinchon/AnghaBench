
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avg_h264_qpel4_v_lowpass_mmi (int *,int * const,int,int) ;
 int copy_block4_mmi (int *,int const*,int,int,int) ;

void ff_avg_h264_qpel4_mc02_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t full[36];
    uint8_t * const full_mid= full + 8;
    copy_block4_mmi(full, src - stride*2, 4, stride, 9);
    avg_h264_qpel4_v_lowpass_mmi(dst, full_mid, stride, 4);
}
