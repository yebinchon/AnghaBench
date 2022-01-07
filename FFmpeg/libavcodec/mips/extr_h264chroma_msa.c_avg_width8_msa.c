
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int int32_t ;


 int AVER_UB2_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int AVER_UB4_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int INSERT_D2_UB (int ,int ,TYPE_1__) ;
 int LD4 (int *,int,int ,int ,int ,int ) ;
 int ST_D4 (TYPE_1__,TYPE_1__,int ,int,int ,int,int *,int) ;
 int ST_D8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int,int ,int,int ,int,int ,int,int *,int) ;

__attribute__((used)) static void avg_width8_msa(uint8_t *src, uint8_t *dst, int32_t stride,
                           int32_t height)
{
    uint64_t tp0, tp1, tp2, tp3, tp4, tp5, tp6, tp7;
    v16u8 src0 = { 0 }, src1 = { 0 }, src2 = { 0 }, src3 = { 0 };
    v16u8 dst0 = { 0 }, dst1 = { 0 }, dst2 = { 0 }, dst3 = { 0 };

    if (8 == height) {
        LD4(src, stride, tp0, tp1, tp2, tp3);
        src += 4 * stride;
        LD4(src, stride, tp4, tp5, tp6, tp7);
        INSERT_D2_UB(tp0, tp1, src0);
        INSERT_D2_UB(tp2, tp3, src1);
        INSERT_D2_UB(tp4, tp5, src2);
        INSERT_D2_UB(tp6, tp7, src3);
        LD4(dst, stride, tp0, tp1, tp2, tp3);
        LD4(dst + 4 * stride, stride, tp4, tp5, tp6, tp7);
        INSERT_D2_UB(tp0, tp1, dst0);
        INSERT_D2_UB(tp2, tp3, dst1);
        INSERT_D2_UB(tp4, tp5, dst2);
        INSERT_D2_UB(tp6, tp7, dst3);
        AVER_UB4_UB(src0, dst0, src1, dst1, src2, dst2, src3, dst3, dst0, dst1,
                    dst2, dst3);
        ST_D8(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
    } else if (4 == height) {
        LD4(src, stride, tp0, tp1, tp2, tp3);
        INSERT_D2_UB(tp0, tp1, src0);
        INSERT_D2_UB(tp2, tp3, src1);
        LD4(dst, stride, tp0, tp1, tp2, tp3);
        INSERT_D2_UB(tp0, tp1, dst0);
        INSERT_D2_UB(tp2, tp3, dst1);
        AVER_UB2_UB(src0, dst0, src1, dst1, dst0, dst1);
        ST_D4(dst0, dst1, 0, 1, 0, 1, dst, stride);
    }
}
