
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_avg_pixels8_l2_8_mmi (int *,int const*,int *,int ,int ,int,int) ;
 int put_h264_qpel8_h_lowpass_mmi (int *,int const*,int,int ) ;

void ff_avg_h264_qpel8_mc10_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t half[64];
    put_h264_qpel8_h_lowpass_mmi(half, src, 8, stride);
    ff_avg_pixels8_l2_8_mmi(dst, src, half, stride, stride, 8, 8);
}
