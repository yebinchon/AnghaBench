
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int HADD_UB2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVRL_B2_UH (int ,int ,scalar_t__,scalar_t__) ;
 int IPRED_SUBS_UH2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB (int const*) ;
 int LW (int const*) ;
 int PCKEV_ST_SB (scalar_t__,scalar_t__,int *) ;
 int SAT_UH2_UH (scalar_t__,scalar_t__,int) ;
 int __msa_fill_b (int) ;
 scalar_t__ __msa_fill_h (int ) ;

void ff_tm_16x16_msa(uint8_t *dst, ptrdiff_t dst_stride,
                     const uint8_t *src_left, const uint8_t *src_top_ptr)
{
    uint8_t top_left = src_top_ptr[-1];
    uint32_t loop_cnt, left;
    v16i8 src_top, src_left0, src_left1, src_left2, src_left3;
    v8u16 src_top_left, res_r, res_l;

    src_top = LD_SB(src_top_ptr);
    src_top_left = (v8u16) __msa_fill_h(top_left);

    src_left += 12;
    for (loop_cnt = 4; loop_cnt--;) {
        left = LW(src_left);
        src_left0 = __msa_fill_b(left >> 24);
        src_left1 = __msa_fill_b(left >> 16);
        src_left2 = __msa_fill_b(left >> 8);
        src_left3 = __msa_fill_b(left);
        src_left -= 4;

        ILVRL_B2_UH(src_left0, src_top, res_r, res_l);
        HADD_UB2_UH(res_r, res_l, res_r, res_l);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r, res_l);

        SAT_UH2_UH(res_r, res_l, 7);
        PCKEV_ST_SB(res_r, res_l, dst);
        dst += dst_stride;

        ILVRL_B2_UH(src_left1, src_top, res_r, res_l);
        HADD_UB2_UH(res_r, res_l, res_r, res_l);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r, res_l);
        SAT_UH2_UH(res_r, res_l, 7);
        PCKEV_ST_SB(res_r, res_l, dst);
        dst += dst_stride;

        ILVRL_B2_UH(src_left2, src_top, res_r, res_l);
        HADD_UB2_UH(res_r, res_l, res_r, res_l);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r, res_l);
        SAT_UH2_UH(res_r, res_l, 7);
        PCKEV_ST_SB(res_r, res_l, dst);
        dst += dst_stride;

        ILVRL_B2_UH(src_left3, src_top, res_r, res_l);
        HADD_UB2_UH(res_r, res_l, res_r, res_l);
        IPRED_SUBS_UH2_UH(src_top_left, src_top_left, res_r, res_l);
        SAT_UH2_UH(res_r, res_l, 7);
        PCKEV_ST_SB(res_r, res_l, dst);
        dst += dst_stride;
    }
}
