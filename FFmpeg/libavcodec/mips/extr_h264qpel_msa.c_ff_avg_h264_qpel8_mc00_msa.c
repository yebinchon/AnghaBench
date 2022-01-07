
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int const uint8_t ;
typedef int uint64_t ;
typedef int ptrdiff_t ;


 int AVER_UB4_UB (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int INSERT_D2_UB (int ,int ,TYPE_1__) ;
 int LD4 (int const*,int,int ,int ,int ,int ) ;
 int ST_D8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int,int ,int,int ,int,int ,int,int const*,int) ;

void ff_avg_h264_qpel8_mc00_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint64_t tp0, tp1, tp2, tp3, tp4, tp5, tp6, tp7;
    v16u8 src0 = { 0 }, src1 = { 0 }, src2 = { 0 }, src3 = { 0 };
    v16u8 dst0 = { 0 }, dst1 = { 0 }, dst2 = { 0 }, dst3 = { 0 };

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
}
