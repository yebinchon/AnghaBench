
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int AVE_ST16x4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int *,int) ;
 int LD_UB (int const*) ;
 int LD_UB8 (int const*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void common_vt_bil_no_rnd_8x16_msa(const uint8_t *src,
                                          int32_t src_stride,
                                          uint8_t *dst, int32_t dst_stride)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7, src8;

    LD_UB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    src8 = LD_UB(src);

    AVE_ST16x4_UB(src0, src1, src1, src2, src2, src3, src3, src4,
                  dst, dst_stride);
    dst += (4 * dst_stride);
    AVE_ST16x4_UB(src4, src5, src5, src6, src6, src7, src7, src8,
                  dst, dst_stride);
}
