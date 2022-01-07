
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;


 int DPADD_SB2_SH (int ,int ,int ,int ,int ,int ) ;
 int HADD_SB2_SH (int ,int ,int ,int ) ;
 int LD_SB3 (int *,int,int ,int ,int ) ;
 int LD_SB4 (int const*,int ,int ,int ,int ,int ) ;
 int PCKEV_XORI128_UB (int ,int ) ;
 int SAT_SH2_SH (int ,int ,int) ;
 int SRARI_H2_SH (int ,int ,int) ;
 int ST_W4 (int ,int ,int,int,int,int *,int ) ;
 int VSHF_B2_SB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int XORI_B4_128_SB (int ,int ,int ,int ) ;
 int __msa_ldi_b (int) ;
 int * luma_mask_arr ;

void ff_put_h264_qpel4_mc20_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    v16u8 out;
    v16i8 src0, src1, src2, src3, mask0, mask1, mask2;
    v16i8 vec0, vec1, vec2, vec3, vec4, vec5;
    v8i16 res0, res1;
    v16i8 minus5b = __msa_ldi_b(-5);
    v16i8 plus20b = __msa_ldi_b(20);

    LD_SB3(&luma_mask_arr[48], 16, mask0, mask1, mask2);
    LD_SB4(src - 2, stride, src0, src1, src2, src3);
    XORI_B4_128_SB(src0, src1, src2, src3);
    VSHF_B2_SB(src0, src1, src2, src3, mask0, mask0, vec0, vec1);
    HADD_SB2_SH(vec0, vec1, res0, res1);
    VSHF_B2_SB(src0, src1, src2, src3, mask1, mask1, vec2, vec3);
    DPADD_SB2_SH(vec2, vec3, minus5b, minus5b, res0, res1);
    VSHF_B2_SB(src0, src1, src2, src3, mask2, mask2, vec4, vec5);
    DPADD_SB2_SH(vec4, vec5, plus20b, plus20b, res0, res1);
    SRARI_H2_SH(res0, res1, 5);
    SAT_SH2_SH(res0, res1, 7);
    out = PCKEV_XORI128_UB(res0, res1);
    ST_W4(out, 0, 1, 2, 3, dst, stride);
}
