
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int avg_h264_qpel4_h_lowpass_mmi (int *,int const*,int ,int ) ;

void ff_avg_h264_qpel4_mc20_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    avg_h264_qpel4_h_lowpass_mmi(dst, src, stride, stride);
}
