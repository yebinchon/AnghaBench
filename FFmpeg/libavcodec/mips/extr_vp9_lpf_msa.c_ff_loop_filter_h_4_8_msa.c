
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v8i16 ;
typedef scalar_t__ v16u8 ;
typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int32_t ;


 int ILVRL_H2_SH (int ,int ,int ,int ) ;
 int ILVR_B2_SH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int LD_UB8 (int *,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LPF_MASK_HEV (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ST_W8 (int ,int ,int ,int,int,int,int ,int,int,int,int *,int ) ;
 int TRANSPOSE8x8_UB_UB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int VP9_LPF_FILTER4_4W (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ __msa_fill_b (int ) ;

void ff_loop_filter_h_4_8_msa(uint8_t *src, ptrdiff_t pitch,
                              int32_t b_limit_ptr,
                              int32_t limit_ptr,
                              int32_t thresh_ptr)
{
    v16u8 mask, hev, flat, limit, thresh, b_limit;
    v16u8 p3, p2, p1, p0, q3, q2, q1, q0;
    v8i16 vec0, vec1, vec2, vec3;

    LD_UB8((src - 4), pitch, p3, p2, p1, p0, q0, q1, q2, q3);

    thresh = (v16u8) __msa_fill_b(thresh_ptr);
    b_limit = (v16u8) __msa_fill_b(b_limit_ptr);
    limit = (v16u8) __msa_fill_b(limit_ptr);

    TRANSPOSE8x8_UB_UB(p3, p2, p1, p0, q0, q1, q2, q3,
                       p3, p2, p1, p0, q0, q1, q2, q3);
    LPF_MASK_HEV(p3, p2, p1, p0, q0, q1, q2, q3, limit, b_limit, thresh,
                 hev, mask, flat);
    VP9_LPF_FILTER4_4W(p1, p0, q0, q1, mask, hev, p1, p0, q0, q1);
    ILVR_B2_SH(p0, p1, q1, q0, vec0, vec1);
    ILVRL_H2_SH(vec1, vec0, vec2, vec3);

    src -= 2;
    ST_W8(vec2, vec3, 0, 1, 2, 3, 0, 1, 2, 3, src, pitch);
}
