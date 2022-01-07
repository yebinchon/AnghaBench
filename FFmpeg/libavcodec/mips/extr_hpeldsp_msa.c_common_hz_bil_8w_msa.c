
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int int32_t ;


 int AVER_ST8x4_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int*,int) ;
 int LD_SB4 (int const*,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SLDI_B4_SB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void common_hz_bil_8w_msa(const uint8_t *src, int32_t src_stride,
                                 uint8_t *dst, int32_t dst_stride,
                                 uint8_t height)
{
    uint8_t loop_cnt;
    v16i8 src0, src1, src2, src3, src0_sld1, src1_sld1, src2_sld1, src3_sld1;
    v16i8 zeros = { 0 };

    for (loop_cnt = (height >> 2); loop_cnt--;) {
        LD_SB4(src, src_stride, src0, src1, src2, src3);
        src += (4 * src_stride);

        SLDI_B4_SB(zeros, src0, zeros, src1, zeros, src2, zeros, src3, 1,
                   src0_sld1, src1_sld1, src2_sld1, src3_sld1);
        AVER_ST8x4_UB(src0, src0_sld1, src1, src1_sld1,
                      src2, src2_sld1, src3, src3_sld1, dst, dst_stride);
        dst += (4 * dst_stride);
    }
}
