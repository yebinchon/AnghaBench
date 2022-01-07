
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cos (double) ;
 int sin (double) ;
 float* twiddles_base_16 (double,float*,int) ;

__attribute__((used)) static float *twiddles_base_32(double two_pi, float *out, double theta) {
    int i;
    for (i=0; i<16; i++) {
        *out++ = cos(two_pi/32*i + theta);
        *out++ = sin(two_pi/32*i + theta);
    }
    return twiddles_base_16(two_pi, out, 2*theta);
}
