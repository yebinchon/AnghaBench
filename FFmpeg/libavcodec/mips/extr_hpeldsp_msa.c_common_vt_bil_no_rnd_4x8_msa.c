
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int AVE_ST8x4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int *,int ) ;
 int LD_UB5 (int const*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void common_vt_bil_no_rnd_4x8_msa(const uint8_t *src, int32_t src_stride,
                                         uint8_t *dst, int32_t dst_stride)
{
    v16u8 src0, src1, src2, src3, src4;

    LD_UB5(src, src_stride, src0, src1, src2, src3, src4);
    AVE_ST8x4_UB(src0, src1, src1, src2, src2, src3, src3, src4,
                 dst, dst_stride);
}
