
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int put_h264_qpel8or16_hv1_lowpass_mmi (int *,int const*,int ,int ,int) ;
 int put_h264_qpel8or16_hv2_lowpass_mmi (int *,int *,int ,int ,int) ;

__attribute__((used)) static void put_h264_qpel8or16_hv_lowpass_mmi(uint8_t *dst, int16_t *tmp,
        const uint8_t *src, ptrdiff_t dstStride, ptrdiff_t tmpStride,
        ptrdiff_t srcStride, int size)
{
    put_h264_qpel8or16_hv1_lowpass_mmi(tmp, src, tmpStride, srcStride, size);
    put_h264_qpel8or16_hv2_lowpass_mmi(dst, tmp, dstStride, tmpStride, size);
}
