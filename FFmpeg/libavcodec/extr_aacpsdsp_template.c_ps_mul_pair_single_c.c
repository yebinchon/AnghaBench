
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INTFLOAT ;


 int AAC_MUL16 (int ,int ) ;

__attribute__((used)) static void ps_mul_pair_single_c(INTFLOAT (*dst)[2], INTFLOAT (*src0)[2], INTFLOAT *src1,
                                 int n)
{
    int i;
    for (i = 0; i < n; i++) {
        dst[i][0] = AAC_MUL16(src0[i][0], src1[i]);
        dst[i][1] = AAC_MUL16(src0[i][1], src1[i]);
    }
}
