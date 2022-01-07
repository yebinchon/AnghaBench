
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int INTFLOAT ;
typedef int INT64FLOAT ;



__attribute__((used)) static void ps_hybrid_analysis_c(INTFLOAT (*out)[2], INTFLOAT (*in)[2],
                                 const INTFLOAT (*filter)[8][2],
                                 ptrdiff_t stride, int n)
{
    int i, j;

    for (i = 0; i < n; i++) {
        INT64FLOAT sum_re = (INT64FLOAT)filter[i][6][0] * in[6][0];
        INT64FLOAT sum_im = (INT64FLOAT)filter[i][6][0] * in[6][1];

        for (j = 0; j < 6; j++) {
            INT64FLOAT in0_re = in[j][0];
            INT64FLOAT in0_im = in[j][1];
            INT64FLOAT in1_re = in[12-j][0];
            INT64FLOAT in1_im = in[12-j][1];
            sum_re += (INT64FLOAT)filter[i][j][0] * (in0_re + in1_re) -
                      (INT64FLOAT)filter[i][j][1] * (in0_im - in1_im);
            sum_im += (INT64FLOAT)filter[i][j][0] * (in0_im + in1_im) +
                      (INT64FLOAT)filter[i][j][1] * (in0_re - in1_re);
        }




        out[i * stride][0] = sum_re;
        out[i * stride][1] = sum_im;

    }
}
