
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cos (double) ;
 double* k ;
 double* m ;
 int sin (double) ;

__attribute__((used)) static float *twiddles_base_16(double two_pi, float *out, double theta) {
    int i;
    for (i=0; i<16; i++) {
        *out++ = cos(two_pi/16*k[i]*m[i] + theta*k[i]);
        *out++ = sin(two_pi/16*k[i]*m[i] + theta*k[i]);
    }
    return out;
}
