
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int AVER_ST8x4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int*,int) ;
 int LD_UB (int const*) ;
 int LD_UB4 (int const*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void common_vt_bil_8w_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 uint8_t height)
{
    uint8_t loop_cnt;
    v16u8 src0, src1, src2, src3, src4;

    src0 = LD_UB(src);
    src += src_stride;

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_UB4(src, src_stride, src1, src2, src3, src4);
        src += (4 * src_stride);

        AVER_ST8x4_UB(src0, src1, src1, src2, src2, src3, src3, src4,
                      dst, dst_stride);
        dst += (4 * dst_stride);

        src0 = src4;
    }
}
