
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int v8i16 ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;


 int AVER_UB2_UB (int ,TYPE_1__,int ,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int DPADD_SB4_SH (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int HADD_SB4_SH (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int INSERT_D2_UB (int ,int ,TYPE_1__) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SB8 (int const*,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_SB (int ,int ,int ,int ,int ,int ) ;
 int PCKEV_D2_SB (int ,int ,int ,int ,int ,int ) ;
 int SAT_SH4_SH (int ,int ,int ,int ,int) ;
 int SLDI_B4_SB (int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ) ;
 int SRARI_H4_SH (int ,int ,int ,int ,int) ;
 int ST_D8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int,int ,int,int ,int,int ,int,int *,int) ;
 int VSHF_B2_SB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int XORI_B8_128_SB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int __msa_aver_s_b (int ,int ) ;
 int __msa_ldi_b (int) ;
 int * luma_mask_arr ;

void ff_avg_h264_qpel8_mc30_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint64_t tp0, tp1, tp2, tp3;
    v16u8 dst0 = { 0 }, dst1 = { 0 }, dst2 = { 0 }, dst3 = { 0 };
    v16i8 src0, src1, src2, src3, src4, src5, src6, src7, mask0, mask1, mask2;
    v16i8 tmp0, tmp1, tmp2, tmp3, vec11;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5, vec6, vec7, vec8, vec9, vec10;
    v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
    v16i8 minus5b = __msa_ldi_b(-5);
    v16i8 plus20b = __msa_ldi_b(20);

    LD_SB3(&luma_mask_arr[0], 16, mask0, mask1, mask2);
    LD_SB8(src - 2, stride, src0, src1, src2, src3, src4, src5, src6, src7);
    XORI_B8_128_SB(src0, src1, src2, src3, src4, src5, src6, src7);
    VSHF_B2_SB(src0, src0, src1, src1, mask0, mask0, vec0, vec1);
    VSHF_B2_SB(src2, src2, src3, src3, mask0, mask0, vec2, vec3);
    HADD_SB4_SH(vec0, vec1, vec2, vec3, res0, res1, res2, res3);
    VSHF_B2_SB(src0, src0, src1, src1, mask1, mask1, vec4, vec5);
    VSHF_B2_SB(src2, src2, src3, src3, mask1, mask1, vec6, vec7);
    DPADD_SB4_SH(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res0, res1, res2, res3);
    VSHF_B2_SB(src0, src0, src1, src1, mask2, mask2, vec8, vec9);
    VSHF_B2_SB(src2, src2, src3, src3, mask2, mask2, vec10, vec11);
    DPADD_SB4_SH(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b, plus20b,
                 res0, res1, res2, res3);
    VSHF_B2_SB(src4, src4, src5, src5, mask0, mask0, vec0, vec1);
    VSHF_B2_SB(src6, src6, src7, src7, mask0, mask0, vec2, vec3);
    HADD_SB4_SH(vec0, vec1, vec2, vec3, res4, res5, res6, res7);
    VSHF_B2_SB(src4, src4, src5, src5, mask1, mask1, vec4, vec5);
    VSHF_B2_SB(src6, src6, src7, src7, mask1, mask1, vec6, vec7);
    DPADD_SB4_SH(vec4, vec5, vec6, vec7, minus5b, minus5b, minus5b, minus5b,
                 res4, res5, res6, res7);
    VSHF_B2_SB(src4, src4, src5, src5, mask2, mask2, vec8, vec9);
    VSHF_B2_SB(src6, src6, src7, src7, mask2, mask2, vec10, vec11);
    DPADD_SB4_SH(vec8, vec9, vec10, vec11, plus20b, plus20b, plus20b, plus20b,
                 res4, res5, res6, res7);
    SLDI_B4_SB(src0, src0, src1, src1, src2, src2, src3, src3, 3,
               src0, src1, src2, src3);
    SLDI_B4_SB(src4, src4, src5, src5, src6, src6, src7, src7, 3,
               src4, src5, src6, src7);
    PCKEV_D2_SB(src1, src0, src3, src2, src0, src1);
    PCKEV_D2_SB(src5, src4, src7, src6, src4, src5);
    SRARI_H4_SH(res0, res1, res2, res3, 5);
    SRARI_H4_SH(res4, res5, res6, res7, 5);
    SAT_SH4_SH(res0, res1, res2, res3, 7);
    SAT_SH4_SH(res4, res5, res6, res7, 7);
    PCKEV_B2_SB(res1, res0, res3, res2, tmp0, tmp1);
    PCKEV_B2_SB(res5, res4, res7, res6, tmp2, tmp3);
    tmp0 = __msa_aver_s_b(tmp0, src0);
    tmp1 = __msa_aver_s_b(tmp1, src1);
    tmp2 = __msa_aver_s_b(tmp2, src4);
    tmp3 = __msa_aver_s_b(tmp3, src5);
    XORI_B4_128_SB(tmp0, tmp1, tmp2, tmp3);
    LD4(dst, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst0);
    INSERT_D2_UB(tp2, tp3, dst1);
    LD4(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
    INSERT_D2_UB(tp0, tp1, dst2);
    INSERT_D2_UB(tp2, tp3, dst3);
    AVER_UB2_UB(tmp0, dst0, tmp1, dst1, dst0, dst1);
    AVER_UB2_UB(tmp2, dst2, tmp3, dst3, dst2, dst3);
    ST_D8(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}
