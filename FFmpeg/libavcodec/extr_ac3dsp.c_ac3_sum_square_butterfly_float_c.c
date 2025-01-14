
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ac3_sum_square_butterfly_float_c(float sum[4],
                                             const float *coef0,
                                             const float *coef1,
                                             int len)
{
    int i;

    sum[0] = sum[1] = sum[2] = sum[3] = 0;

    for (i = 0; i < len; i++) {
        float lt = coef0[i];
        float rt = coef1[i];
        float md = lt + rt;
        float sd = lt - rt;
        sum[0] += lt * lt;
        sum[1] += rt * rt;
        sum[2] += md * md;
        sum[3] += sd * sd;
    }
}
