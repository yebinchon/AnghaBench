
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int copy_block4_mmi (int *,int const*,int,int,int) ;
 int ff_put_pixels4_l2_8_mmi (int *,int * const,int *,int,int,int,int) ;
 int put_h264_qpel4_v_lowpass_mmi (int *,int * const,int,int) ;

void ff_put_h264_qpel4_mc03_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t full[36];
    uint8_t * const full_mid= full + 8;
    uint8_t half[16];
    copy_block4_mmi(full, src - stride*2, 4, stride, 9);
    put_h264_qpel4_v_lowpass_mmi(half, full_mid, 4, 4);
    ff_put_pixels4_l2_8_mmi(dst, full_mid+4, half, stride, 4, 4, 4);
}
