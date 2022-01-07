
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int put_h264_qpel8_h_lowpass_mmi (int *,int const*,int ,int ) ;

void ff_put_h264_qpel8_mc20_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    put_h264_qpel8_h_lowpass_mmi(dst, src, stride, stride);
}
