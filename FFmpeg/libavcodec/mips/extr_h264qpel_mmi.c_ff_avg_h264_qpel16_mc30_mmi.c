
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_avg_pixels16_l2_8_mmi (int *,int const*,int *,int ,int ,int,int) ;
 int put_h264_qpel16_h_lowpass_mmi (int *,int const*,int,int ) ;

void ff_avg_h264_qpel16_mc30_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t half[256];
    put_h264_qpel16_h_lowpass_mmi(half, src, 16, stride);
    ff_avg_pixels16_l2_8_mmi(dst, src+1, half, stride, stride, 16, 16);
}
