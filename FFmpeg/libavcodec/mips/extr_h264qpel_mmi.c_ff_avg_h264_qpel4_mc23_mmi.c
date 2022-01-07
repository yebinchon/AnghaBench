
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ff_avg_pixels4_l2_8_mmi (int *,int *,int *,int ,int,int,int) ;
 int put_h264_qpel4_h_lowpass_mmi (int *,int const*,int,int ) ;
 int put_h264_qpel4_hv_lowpass_mmi (int *,int const*,int,int ) ;

void ff_avg_h264_qpel4_mc23_mmi(uint8_t *dst, const uint8_t *src,
        ptrdiff_t stride)
{
    uint8_t halfH[16];
    uint8_t halfHV[16];
    put_h264_qpel4_h_lowpass_mmi(halfH, src + stride, 4, stride);
    put_h264_qpel4_hv_lowpass_mmi(halfHV, src, 4, stride);
    ff_avg_pixels4_l2_8_mmi(dst, halfH, halfHV, stride, 4, 4, 4);
}
