
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int v8i16 ;
typedef int v16u8 ;
struct TYPE_10__ {int member_0; } ;
typedef TYPE_1__ v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int ADDS_SH4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ILVL_B4_SH (TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,int ,int ,int ,int ) ;
 int ILVR_B4_SH (TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,TYPE_1__,int ,int ,int ,int ,int ) ;
 int LD_UB8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int MAXI_SH8_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int MUL4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SAT_UH8_SH (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int SRLR_H8_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ST_UB8 (int ,int ,int ,int ,int ,int ,int ,int ,int *,int) ;
 int __msa_fill_h (int) ;

void ff_weight_h264_pixels16_8_msa(uint8_t *src, ptrdiff_t stride,
                                   int height, int log2_denom,
                                   int weight_src, int offset_in)
{
    uint32_t offset_val;
    v16i8 zero = { 0 };
    v16u8 src0, src1, src2, src3, src4, src5, src6, src7;
    v16u8 dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7;
    v8i16 src0_l, src1_l, src2_l, src3_l, src0_r, src1_r, src2_r, src3_r;
    v8i16 src4_l, src5_l, src6_l, src7_l, src4_r, src5_r, src6_r, src7_r;
    v8i16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    v8i16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
    v8i16 wgt, denom, offset;

    offset_val = (unsigned) offset_in << log2_denom;

    wgt = __msa_fill_h(weight_src);
    offset = __msa_fill_h(offset_val);
    denom = __msa_fill_h(log2_denom);

    LD_UB8(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, src0_r, src1_r,
               src2_r, src3_r);
    ILVL_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, src0_l, src1_l,
               src2_l, src3_l);
    ILVR_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, src4_r, src5_r,
               src6_r, src7_r);
    ILVL_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, src4_l, src5_l,
               src6_l, src7_l);
    MUL4(wgt, src0_r, wgt, src0_l, wgt, src1_r, wgt, src1_l, tmp0, tmp1, tmp2,
         tmp3);
    MUL4(wgt, src2_r, wgt, src2_l, wgt, src3_r, wgt, src3_l, tmp4, tmp5, tmp6,
         tmp7);
    MUL4(wgt, src4_r, wgt, src4_l, wgt, src5_r, wgt, src5_l, tmp8, tmp9, tmp10,
         tmp11);
    MUL4(wgt, src6_r, wgt, src6_l, wgt, src7_r, wgt, src7_l, tmp12, tmp13,
         tmp14, tmp15);
    ADDS_SH4_SH(tmp0, offset, tmp1, offset, tmp2, offset, tmp3, offset, tmp0,
                tmp1, tmp2, tmp3);
    ADDS_SH4_SH(tmp4, offset, tmp5, offset, tmp6, offset, tmp7, offset, tmp4,
                tmp5, tmp6, tmp7);
    ADDS_SH4_SH(tmp8, offset, tmp9, offset, tmp10, offset, tmp11, offset, tmp8,
                tmp9, tmp10, tmp11);
    ADDS_SH4_SH(tmp12, offset, tmp13, offset, tmp14, offset, tmp15, offset,
                tmp12, tmp13, tmp14, tmp15);
    MAXI_SH8_SH(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 0);
    MAXI_SH8_SH(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 0);
    SRLR_H8_SH(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom);
    SRLR_H8_SH(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, denom);
    SAT_UH8_SH(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 7);
    SAT_UH8_SH(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 7);
    PCKEV_B4_UB(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, dst0, dst1,
                dst2, dst3);
    PCKEV_B4_UB(tmp9, tmp8, tmp11, tmp10, tmp13, tmp12, tmp15, tmp14, dst4,
                dst5, dst6, dst7);
    ST_UB8(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, src, stride);
    src += 8 * stride;

    if (16 == height) {
        LD_UB8(src, stride, src0, src1, src2, src3, src4, src5, src6, src7);
        ILVR_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, src0_r,
                   src1_r, src2_r, src3_r);
        ILVL_B4_SH(zero, src0, zero, src1, zero, src2, zero, src3, src0_l,
                   src1_l, src2_l, src3_l);
        ILVR_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, src4_r,
                   src5_r, src6_r, src7_r);
        ILVL_B4_SH(zero, src4, zero, src5, zero, src6, zero, src7, src4_l,
                   src5_l, src6_l, src7_l);
        MUL4(wgt, src0_r, wgt, src0_l, wgt, src1_r, wgt, src1_l, tmp0, tmp1,
             tmp2, tmp3);
        MUL4(wgt, src2_r, wgt, src2_l, wgt, src3_r, wgt, src3_l, tmp4, tmp5,
             tmp6, tmp7);
        MUL4(wgt, src4_r, wgt, src4_l, wgt, src5_r, wgt, src5_l, tmp8, tmp9,
             tmp10, tmp11);
        MUL4(wgt, src6_r, wgt, src6_l, wgt, src7_r, wgt, src7_l, tmp12, tmp13,
             tmp14, tmp15);
        ADDS_SH4_SH(tmp0, offset, tmp1, offset, tmp2, offset, tmp3, offset,
                    tmp0, tmp1, tmp2, tmp3);
        ADDS_SH4_SH(tmp4, offset, tmp5, offset, tmp6, offset, tmp7, offset,
                    tmp4, tmp5, tmp6, tmp7);
        ADDS_SH4_SH(tmp8, offset, tmp9, offset, tmp10, offset, tmp11, offset,
                    tmp8, tmp9, tmp10, tmp11);
        ADDS_SH4_SH(tmp12, offset, tmp13, offset, tmp14, offset, tmp15, offset,
                    tmp12, tmp13, tmp14, tmp15);
        MAXI_SH8_SH(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 0);
        MAXI_SH8_SH(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 0);
        SRLR_H8_SH(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, denom);
        SRLR_H8_SH(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, denom);
        SAT_UH8_SH(tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, 7);
        SAT_UH8_SH(tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15, 7);
        PCKEV_B4_UB(tmp1, tmp0, tmp3, tmp2, tmp5, tmp4, tmp7, tmp6, dst0, dst1,
                    dst2, dst3);
        PCKEV_B4_UB(tmp9, tmp8, tmp11, tmp10, tmp13, tmp12, tmp15, tmp14, dst4,
                    dst5, dst6, dst7);
        ST_UB8(dst0, dst1, dst2, dst3, dst4, dst5, dst6, dst7, src, stride);
    }
}
