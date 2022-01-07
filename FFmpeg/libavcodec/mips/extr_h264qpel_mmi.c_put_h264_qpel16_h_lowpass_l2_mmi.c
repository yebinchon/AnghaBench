
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int put_h264_qpel8_h_lowpass_l2_mmi (int *,int const*,int const*,int,int) ;

__attribute__((used)) static void put_h264_qpel16_h_lowpass_l2_mmi(uint8_t *dst, const uint8_t *src,
        const uint8_t *src2, ptrdiff_t dstStride, ptrdiff_t src2Stride)
{
    put_h264_qpel8_h_lowpass_l2_mmi(dst, src, src2, dstStride, src2Stride);
    put_h264_qpel8_h_lowpass_l2_mmi(dst + 8, src + 8, src2 + 8, dstStride,
            src2Stride);

    src += 8 * dstStride;
    dst += 8 * dstStride;
    src2 += 8 * src2Stride;

    put_h264_qpel8_h_lowpass_l2_mmi(dst, src, src2, dstStride, src2Stride);
    put_h264_qpel8_h_lowpass_l2_mmi(dst + 8, src + 8, src2 + 8, dstStride,
            src2Stride);
}
