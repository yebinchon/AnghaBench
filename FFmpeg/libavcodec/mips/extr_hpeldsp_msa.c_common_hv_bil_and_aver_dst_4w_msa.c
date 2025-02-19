
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef int v8u16 ;
typedef int v4i32 ;
typedef scalar_t__ v16u8 ;
struct TYPE_20__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int ADD2 (int ,int ,int ,int ,int ,int ) ;
 int AVER_UB2_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int HADD_UB3_UH (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ) ;
 int ILVR_B3_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_1__ LD_SB (int const*) ;
 int LD_SB2 (int const*,int,TYPE_1__,TYPE_1__) ;
 int LD_UB2 (int*,int,scalar_t__,scalar_t__) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 int SLDI_B3_SB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SRARI_H2_UH (int ,int ,int) ;
 int SW (int ,int*) ;
 int __msa_copy_u_w (int ,int ) ;

__attribute__((used)) static void common_hv_bil_and_aver_dst_4w_msa(const uint8_t *src,
                                              int32_t src_stride,
                                              uint8_t *dst, int32_t dst_stride,
                                              uint8_t height)
{
    uint8_t loop_cnt;
    uint32_t out0, out1;
    v16i8 src0, src1, src2, src0_sld1, src1_sld1, src2_sld1;
    v16u8 src0_r, src1_r, src2_r;
    v8u16 add0, add1, add2, sum0, sum1;
    v16u8 dst0, dst1, res0, res1;
    v16i8 zeros = { 0 };

    src0 = LD_SB(src);
    src += src_stride;

    for (loop_cnt = (height >> 1); loop_cnt--;) {
        LD_SB2(src, src_stride, src1, src2);
        src += (2 * src_stride);

        LD_UB2(dst, dst_stride, dst0, dst1);
        SLDI_B3_SB(zeros, src0, zeros, src1, zeros, src2, 1, src0_sld1,
                   src1_sld1, src2_sld1);
        ILVR_B3_UB(src0_sld1, src0, src1_sld1, src1, src2_sld1, src2, src0_r,
                   src1_r, src2_r);
        HADD_UB3_UH(src0_r, src1_r, src2_r, add0, add1, add2);
        ADD2(add0, add1, add1, add2, sum0, sum1);
        SRARI_H2_UH(sum0, sum1, 2);
        PCKEV_B2_UB(sum0, sum0, sum1, sum1, res0, res1);
        AVER_UB2_UB(dst0, res0, dst1, res1, res0, res1);

        out0 = __msa_copy_u_w((v4i32) res0, 0);
        out1 = __msa_copy_u_w((v4i32) res1, 0);
        SW(out0, dst);
        dst += dst_stride;
        SW(out1, dst);
        dst += dst_stride;

        src0 = src2;
    }
}
