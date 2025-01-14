
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float M_PI ;
 float atan2f (int ,int ) ;
 int lrintf (float) ;
 int sqrtf (float) ;

__attribute__((used)) static int celt_calc_theta(const float *X, const float *Y, int coupling, int N)
{
    int i;
    float e[2] = { 0.0f, 0.0f };
    if (coupling) {
        for (i = 0; i < N; i++) {
            e[0] += (X[i] + Y[i])*(X[i] + Y[i]);
            e[1] += (X[i] - Y[i])*(X[i] - Y[i]);
        }
    } else {
        for (i = 0; i < N; i++) {
            e[0] += X[i]*X[i];
            e[1] += Y[i]*Y[i];
        }
    }
    return lrintf(32768.0f*atan2f(sqrtf(e[1]), sqrtf(e[0]))/M_PI);
}
