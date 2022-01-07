
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int copy_block8_mmi (int *,int const*,int,int,int) ;
 int put_h264_qpel8_v_lowpass_mmi (int *,int * const,int,int) ;

void ff_put_h264_qpel8_mc02_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t full[104];
    uint8_t * const full_mid= full + 16;
    copy_block8_mmi(full, src - stride*2, 8, stride, 13);
    put_h264_qpel8_v_lowpass_mmi(dst, full_mid, stride, 8);
}
