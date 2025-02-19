
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int avg_h264_qpel8_v_lowpass_mmi (int *,int const*,int,int) ;

__attribute__((used)) static void avg_h264_qpel16_v_lowpass_mmi(uint8_t *dst, const uint8_t *src,
        int dstStride, int srcStride)
{
    avg_h264_qpel8_v_lowpass_mmi(dst, src, dstStride, srcStride);
    avg_h264_qpel8_v_lowpass_mmi(dst+8, src+8, dstStride, srcStride);
    src += 8*srcStride;
    dst += 8*dstStride;
    avg_h264_qpel8_v_lowpass_mmi(dst, src, dstStride, srcStride);
    avg_h264_qpel8_v_lowpass_mmi(dst+8, src+8, dstStride, srcStride);
}
