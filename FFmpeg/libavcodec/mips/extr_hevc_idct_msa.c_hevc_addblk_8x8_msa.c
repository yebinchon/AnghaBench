
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int v8i16 ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ v2i64 ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_2__ v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;
typedef int int16_t ;


 int ADD4 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int CLIP_SH4_0_255 (int ,int ,int ,int ) ;
 int ILVRL_B2_SH (TYPE_2__,TYPE_1__,int ,int ) ;
 int INSERT_D2_SD (int ,int ,TYPE_1__) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int LD_SH8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int PCKEV_B2_SH (int ,int ,int ,int ,int ,int ) ;
 int ST_D4 (int ,int ,int ,int,int ,int,int *,int) ;
 int UNPCK_UB_SH (TYPE_1__,int ,int ) ;

__attribute__((used)) static void hevc_addblk_8x8_msa(int16_t *coeffs, uint8_t *dst, int32_t stride)
{
    uint8_t *temp_dst = dst;
    uint64_t dst0, dst1, dst2, dst3;
    v2i64 dst_vec0 = { 0 };
    v2i64 dst_vec1 = { 0 };
    v8i16 dst_r0, dst_l0, dst_r1, dst_l1;
    v8i16 in0, in1, in2, in3, in4, in5, in6, in7;
    v16u8 zeros = { 0 };

    LD_SH8(coeffs, 8, in0, in1, in2, in3, in4, in5, in6, in7);
    LD4(temp_dst, stride, dst0, dst1, dst2, dst3);
    temp_dst += (4 * stride);

    INSERT_D2_SD(dst0, dst1, dst_vec0);
    INSERT_D2_SD(dst2, dst3, dst_vec1);
    ILVRL_B2_SH(zeros, dst_vec0, dst_r0, dst_l0);
    ILVRL_B2_SH(zeros, dst_vec1, dst_r1, dst_l1);
    ADD4(dst_r0, in0, dst_l0, in1, dst_r1, in2, dst_l1, in3,
         dst_r0, dst_l0, dst_r1, dst_l1);
    CLIP_SH4_0_255(dst_r0, dst_l0, dst_r1, dst_l1);
    PCKEV_B2_SH(dst_l0, dst_r0, dst_l1, dst_r1, dst_r0, dst_r1);
    ST_D4(dst_r0, dst_r1, 0, 1, 0, 1, dst, stride);

    LD4(temp_dst, stride, dst0, dst1, dst2, dst3);
    INSERT_D2_SD(dst0, dst1, dst_vec0);
    INSERT_D2_SD(dst2, dst3, dst_vec1);
    UNPCK_UB_SH(dst_vec0, dst_r0, dst_l0);
    UNPCK_UB_SH(dst_vec1, dst_r1, dst_l1);
    ADD4(dst_r0, in4, dst_l0, in5, dst_r1, in6, dst_l1, in7,
         dst_r0, dst_l0, dst_r1, dst_l1);
    CLIP_SH4_0_255(dst_r0, dst_l0, dst_r1, dst_l1);
    PCKEV_B2_SH(dst_l0, dst_r0, dst_l1, dst_r1, dst_r0, dst_r1);
    ST_D4(dst_r0, dst_r1, 0, 1, 0, 1, dst + 4 * stride, stride);
}
