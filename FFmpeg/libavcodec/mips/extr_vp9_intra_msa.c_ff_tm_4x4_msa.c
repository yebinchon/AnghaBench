
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v8u16 ;
typedef int v16u8 ;
typedef int v16i8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int HADD_UB4_UH (int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ILVR_B4_UB (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IPRED_SUBS_UH2_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int LD_SB (int const*) ;
 int LW (int const*) ;
 int PCKEV_B2_SB (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int SAT_UH4_UH (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int ST_W2 (int ,int ,int,int *,int) ;
 int __msa_fill_b (int) ;
 scalar_t__ __msa_fill_h (int ) ;

void ff_tm_4x4_msa(uint8_t *dst, ptrdiff_t dst_stride,
                   const uint8_t *src_left, const uint8_t *src_top_ptr)
{
    uint32_t left;
    uint8_t top_left = src_top_ptr[-1];
    v16i8 src_top, src_left0, src_left1, src_left2, src_left3, tmp0, tmp1;
    v16u8 src0, src1, src2, src3;
    v8u16 src_top_left, vec0, vec1, vec2, vec3;

    src_top_left = (v8u16) __msa_fill_h(top_left);
    src_top = LD_SB(src_top_ptr);
    left = LW(src_left);
    src_left0 = __msa_fill_b(left >> 24);
    src_left1 = __msa_fill_b(left >> 16);
    src_left2 = __msa_fill_b(left >> 8);
    src_left3 = __msa_fill_b(left);

    ILVR_B4_UB(src_left0, src_top, src_left1, src_top, src_left2, src_top,
               src_left3, src_top, src0, src1, src2, src3);
    HADD_UB4_UH(src0, src1, src2, src3, vec0, vec1, vec2, vec3);
    IPRED_SUBS_UH2_UH(src_top_left, src_top_left, vec0, vec1);
    IPRED_SUBS_UH2_UH(src_top_left, src_top_left, vec2, vec3);
    SAT_UH4_UH(vec0, vec1, vec2, vec3, 7);
    PCKEV_B2_SB(vec1, vec0, vec3, vec2, tmp0, tmp1);
    ST_W2(tmp0, 0, 2, dst, dst_stride);
    ST_W2(tmp1, 0, 2, dst + 2 * dst_stride, dst_stride);
}
