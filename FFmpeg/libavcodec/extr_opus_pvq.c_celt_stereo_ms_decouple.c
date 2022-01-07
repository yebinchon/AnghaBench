
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float M_SQRT1_2 ;

__attribute__((used)) static void celt_stereo_ms_decouple(float *X, float *Y, int N)
{
    int i;
    for (i = 0; i < N; i++) {
        const float Xret = X[i];
        X[i] = (X[i] + Y[i])*M_SQRT1_2;
        Y[i] = (Y[i] - Xret)*M_SQRT1_2;
    }
}
