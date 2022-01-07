
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int ADD2 (int,int,int,int,int,int) ;
 int CLIP_SH2_0_255 (int,int) ;
 int LD_SB (int const*) ;
 int ST_SB (int ,int *) ;
 int ST_SB4 (int ,int ,int ,int ,int *,int) ;
 int SUB2 (int,int,int,int,int,int) ;
 int UNPCK_UB_SH (int ,int,int) ;
 int __msa_fill_b (int ) ;
 int __msa_fill_h (int const) ;
 int __msa_pckev_b (int ,int ) ;

__attribute__((used)) static void hevc_intra_pred_horiz_16x16_msa(const uint8_t *src_top,
                                            const uint8_t *src_left,
                                            uint8_t *dst, int32_t stride,
                                            int32_t flag)
{
    uint8_t *tmp_dst = dst;
    uint32_t row;
    uint8_t inp0, inp1, inp2, inp3;
    v16i8 src0, src1, src2, src3;
    v8i16 src0_r, src0_l, src_left_val, src_top_val;

    src_left_val = __msa_fill_h(src_left[0]);

    for (row = 4; row--;) {
        inp0 = src_left[0];
        inp1 = src_left[1];
        inp2 = src_left[2];
        inp3 = src_left[3];
        src_left += 4;

        src0 = __msa_fill_b(inp0);
        src1 = __msa_fill_b(inp1);
        src2 = __msa_fill_b(inp2);
        src3 = __msa_fill_b(inp3);

        ST_SB4(src0, src1, src2, src3, tmp_dst, stride);
        tmp_dst += (4 * stride);
    }

    if (0 == flag) {
        src0 = LD_SB(src_top);
        src_top_val = __msa_fill_h(src_top[-1]);

        UNPCK_UB_SH(src0, src0_r, src0_l);
        SUB2(src0_r, src_top_val, src0_l, src_top_val, src0_r, src0_l);

        src0_r >>= 1;
        src0_l >>= 1;

        ADD2(src0_r, src_left_val, src0_l, src_left_val, src0_r, src0_l);
        CLIP_SH2_0_255(src0_r, src0_l);
        src0 = __msa_pckev_b((v16i8) src0_l, (v16i8) src0_r);
        ST_SB(src0, dst);
    }
}
