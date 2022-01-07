
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int put_h264_qpel16_hv_lowpass_mmi (int *,int *,int const*,int ,int,int ) ;

void ff_put_h264_qpel16_mc22_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint16_t __attribute__ ((aligned(8))) temp[384];

    put_h264_qpel16_hv_lowpass_mmi(dst, temp, src, stride, 16, stride);
}
