
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int avg_h264_qpel16_h_lowpass_l2_mmi (int *,int const*,int * const,int ,int) ;
 int put_h264_qpel16_hv_lowpass_mmi (int * const,int * const,int const*,int,int,int ) ;

void ff_avg_h264_qpel16_mc21_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t __attribute__ ((aligned(8))) temp[1024];
    uint8_t *const halfHV = temp;
    int16_t *const halfV = (int16_t *) (temp + 256);

    put_h264_qpel16_hv_lowpass_mmi(halfHV, halfV, src, 16, 16, stride);
    avg_h264_qpel16_h_lowpass_l2_mmi(dst, src, halfHV, stride, 16);
}
