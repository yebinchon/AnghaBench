
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_put_pixels4_l2_8_mmi (int *,int const*,int *,int ,int ,int,int) ;
 int put_h264_qpel4_h_lowpass_mmi (int *,int const*,int,int ) ;

void ff_put_h264_qpel4_mc10_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t half[16];
    put_h264_qpel4_h_lowpass_mmi(half, src, 4, stride);
    ff_put_pixels4_l2_8_mmi(dst, src, half, stride, stride, 4, 4);
}
