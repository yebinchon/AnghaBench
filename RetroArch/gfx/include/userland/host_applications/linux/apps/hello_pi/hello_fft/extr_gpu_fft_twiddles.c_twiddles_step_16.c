
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALPHA (double) ;
 int BETA (double) ;
 double* k ;

__attribute__((used)) static float *twiddles_step_16(double two_pi, float *out, double theta) {
    int i;
    for (i=0; i<16; i++) {
        *out++ = ALPHA(theta*k[i]);
        *out++ = BETA(theta*k[i]);
    }
    return out;
}
