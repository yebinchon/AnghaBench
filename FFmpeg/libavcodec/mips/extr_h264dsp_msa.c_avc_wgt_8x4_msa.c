
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int v8i16 ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef unsigned int uint32_t ;
typedef unsigned int int32_t ;


 int ADDS_SH4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int INSERT_D2_UB (int ,int ,TYPE_1__) ;
 int LD4 (int *,unsigned int,int ,int ,int ,int ) ;
 int MAXI_SH4_SH (int ,int ,int ,int ,int ) ;
 int MUL4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_UB (int ,int ,int ,int ,TYPE_1__,TYPE_1__) ;
 int SAT_UH4_SH (int ,int ,int ,int ,int) ;
 int SRLR_H4_SH (int ,int ,int ,int ,int ) ;
 int ST_D4 (TYPE_1__,TYPE_1__,int ,int,int ,int,int *,unsigned int) ;
 int UNPCK_UB_SH (TYPE_1__,int ,int ) ;
 int __msa_fill_h (unsigned int) ;

__attribute__((used)) static void avc_wgt_8x4_msa(uint8_t *data, int32_t stride, int32_t log2_denom,
                            int32_t src_weight, int32_t offset_in)
{
    uint32_t offset_val;
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, src1 = { 0 };
    v8i16 src0_r, src1_r, src2_r, src3_r, tmp0, tmp1, tmp2, tmp3;
    v8i16 wgt, denom, offset;

    offset_val = (unsigned) offset_in << log2_denom;

    wgt = __msa_fill_h(src_weight);
    offset = __msa_fill_h(offset_val);
    denom = __msa_fill_h(log2_denom);

    LD4(data, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, src0);
    INSERT_D2_UB(tp2, tp3, src1);
    UNPCK_UB_SH(src0, src0_r, src1_r);
    UNPCK_UB_SH(src1, src2_r, src3_r);
    MUL4(wgt, src0_r, wgt, src1_r, wgt, src2_r, wgt, src3_r, tmp0, tmp1, tmp2,
         tmp3);
    ADDS_SH4_SH(tmp0, offset, tmp1, offset, tmp2, offset, tmp3, offset, tmp0,
                tmp1, tmp2, tmp3);
    MAXI_SH4_SH(tmp0, tmp1, tmp2, tmp3, 0);
    SRLR_H4_SH(tmp0, tmp1, tmp2, tmp3, denom);
    SAT_UH4_SH(tmp0, tmp1, tmp2, tmp3, 7);
    PCKEV_B2_UB(tmp1, tmp0, tmp3, tmp2, src0, src1);
    ST_D4(src0, src1, 0, 1, 0, 1, data, stride);
}
