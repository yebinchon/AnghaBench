
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int LD_UB4 (int *,int,int ,int ,int ,int ) ;
 int ST_UB4 (int ,int ,int ,int ,int *,int) ;

__attribute__((used)) static void copy_width32_msa(uint8_t *src, int32_t src_stride,
                             uint8_t *dst, int32_t dst_stride,
                             int32_t height)
{
    int32_t cnt;
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;

    for (cnt = (height >> 2); cnt--;) {
        LD_UB4(src, src_stride, src0, src1, src2, src3);
        LD_UB4(src + 16, src_stride, src4, src5, src6, src7);
        src += (4 * src_stride);
        ST_UB4(src0, src1, src2, src3, dst, dst_stride);
        ST_UB4(src4, src5, src6, src7, dst + 16, dst_stride);
        dst += (4 * dst_stride);
    }
}
