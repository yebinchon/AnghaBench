
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int LD_UB8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ST12x8_UB (int ,int ,int ,int ,int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void copy_width12_msa(uint8_t *src, int32_t src_stride,
                             uint8_t *dst, int32_t dst_stride,
                             int32_t height)
{
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;

    LD_UB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    src += (8 * src_stride);
    ST12x8_UB(src0, src1, src2, src3, src4, src5, src6, src7, dst, dst_stride);
    dst += (8 * dst_stride);
    LD_UB8(src, src_stride, src0, src1, src2, src3, src4, src5, src6, src7);
    ST12x8_UB(src0, src1, src2, src3, src4, src5, src6, src7, dst, dst_stride);
}
