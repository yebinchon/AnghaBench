
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ v16u8 ;
typedef int const uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int INSERT_W4_UB (int ,int ,int ,int ,TYPE_1__) ;
 int LW4 (int const*,int ,int ,int ,int ,int ) ;
 int ST_W4 (TYPE_1__,int ,int,int,int,int const*,int ) ;
 TYPE_1__ __msa_aver_u_b (TYPE_1__,TYPE_1__) ;

void ff_avg_h264_qpel4_mc00_msa(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, dst0 = { 0 };

    LW4(src, stride, tp0, tp1, tp2, tp3);
    INSERT_W4_UB(tp0, tp1, tp2, tp3, src0);
    LW4(dst, stride, tp0, tp1, tp2, tp3);
    INSERT_W4_UB(tp0, tp1, tp2, tp3, dst0);

    dst0 = __msa_aver_u_b(src0, dst0);

    ST_W4(dst0, 0, 1, 2, 3, dst, stride);
}
