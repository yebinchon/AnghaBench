
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v2i64 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;


 int ILVR_D4_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_UB8 (int *,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LPF_MASK_HEV (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int SD (int ,int *) ;
 int SD4 (int ,int ,int ,int ,int *,int) ;
 int VP8_MBFILTER (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int __msa_copy_u_d (int ,int) ;
 scalar_t__ __msa_fill_b (int) ;

void ff_vp8_v_loop_filter8uv_msa(uint8_t *src_u, uint8_t *src_v,
                                 ptrdiff_t pitch, int b_limit_in, int limit_in,
                                 int thresh_in)
{
    uint8_t *temp_src;
    uint64_t p2_d, p1_d, p0_d, q0_d, q1_d, q2_d;
    v16u8 p3, p2, p1, p0, q3, q2, q1, q0;
    v16u8 mask, hev, flat, thresh, limit, b_limit;
    v16u8 p3_u, p2_u, p1_u, p0_u, q3_u, q2_u, q1_u, q0_u;
    v16u8 p3_v, p2_v, p1_v, p0_v, q3_v, q2_v, q1_v, q0_v;

    b_limit = (v16u8) __msa_fill_b(b_limit_in);
    limit = (v16u8) __msa_fill_b(limit_in);
    thresh = (v16u8) __msa_fill_b(thresh_in);

    temp_src = src_u - (pitch << 2);
    LD_UB8(temp_src, pitch, p3_u, p2_u, p1_u, p0_u, q0_u, q1_u, q2_u, q3_u);
    temp_src = src_v - (pitch << 2);
    LD_UB8(temp_src, pitch, p3_v, p2_v, p1_v, p0_v, q0_v, q1_v, q2_v, q3_v);


    ILVR_D4_UB(p3_v, p3_u, p2_v, p2_u, p1_v, p1_u, p0_v, p0_u, p3, p2, p1, p0);
    ILVR_D4_UB(q0_v, q0_u, q1_v, q1_u, q2_v, q2_u, q3_v, q3_u, q0, q1, q2, q3);
    LPF_MASK_HEV(p3, p2, p1, p0, q0, q1, q2, q3, limit, b_limit, thresh,
                 hev, mask, flat);
    VP8_MBFILTER(p2, p1, p0, q0, q1, q2, mask, hev);

    p2_d = __msa_copy_u_d((v2i64) p2, 0);
    p1_d = __msa_copy_u_d((v2i64) p1, 0);
    p0_d = __msa_copy_u_d((v2i64) p0, 0);
    q0_d = __msa_copy_u_d((v2i64) q0, 0);
    q1_d = __msa_copy_u_d((v2i64) q1, 0);
    q2_d = __msa_copy_u_d((v2i64) q2, 0);
    src_u -= (pitch * 3);
    SD4(p2_d, p1_d, p0_d, q0_d, src_u, pitch);
    src_u += 4 * pitch;
    SD(q1_d, src_u);
    src_u += pitch;
    SD(q2_d, src_u);

    p2_d = __msa_copy_u_d((v2i64) p2, 1);
    p1_d = __msa_copy_u_d((v2i64) p1, 1);
    p0_d = __msa_copy_u_d((v2i64) p0, 1);
    q0_d = __msa_copy_u_d((v2i64) q0, 1);
    q1_d = __msa_copy_u_d((v2i64) q1, 1);
    q2_d = __msa_copy_u_d((v2i64) q2, 1);
    src_v -= (pitch * 3);
    SD4(p2_d, p1_d, p0_d, q0_d, src_v, pitch);
    src_v += 4 * pitch;
    SD(q1_d, src_v);
    src_v += pitch;
    SD(q2_d, src_v);
}
