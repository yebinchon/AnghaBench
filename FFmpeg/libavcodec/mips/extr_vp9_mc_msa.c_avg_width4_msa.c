
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int const uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int AVER_UB2_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int INSERT_W4_UB (int ,int ,int ,int ,TYPE_1__) ;
 int LW4 (int const*,int,int ,int ,int ,int ) ;
 int ST_W4 (TYPE_1__,int ,int,int,int,int const*,int) ;
 int ST_W8 (TYPE_1__,TYPE_1__,int ,int,int,int,int ,int,int,int,int const*,int) ;
 TYPE_1__ __msa_aver_u_b (TYPE_1__,TYPE_1__) ;

__attribute__((used)) static void avg_width4_msa(const uint8_t *src, int32_t src_stride,
                           uint8_t *dst, int32_t dst_stride,
                           int32_t height)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, src1 = { 0 }, dst0 = { 0 }, dst1 = { 0 };

    if (8 == height) {
        LW4(src, src_stride, tp0, tp1, tp2, tp3);
        src += 4 * src_stride;
        INSERT_W4_UB(tp0, tp1, tp2, tp3, src0);
        LW4(src, src_stride, tp0, tp1, tp2, tp3);
        INSERT_W4_UB(tp0, tp1, tp2, tp3, src1);
        LW4(dst, dst_stride, tp0, tp1, tp2, tp3);
        INSERT_W4_UB(tp0, tp1, tp2, tp3, dst0);
        LW4(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
        INSERT_W4_UB(tp0, tp1, tp2, tp3, dst1);
        AVER_UB2_UB(src0, dst0, src1, dst1, dst0, dst1);
        ST_W8(dst0, dst1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
    } else if (4 == height) {
        LW4(src, src_stride, tp0, tp1, tp2, tp3);
        INSERT_W4_UB(tp0, tp1, tp2, tp3, src0);
        LW4(dst, dst_stride, tp0, tp1, tp2, tp3);
        INSERT_W4_UB(tp0, tp1, tp2, tp3, dst0);
        dst0 = __msa_aver_u_b(src0, dst0);
        ST_W4(dst0, 0, 1, 2, 3, dst, dst_stride);
    }
}
