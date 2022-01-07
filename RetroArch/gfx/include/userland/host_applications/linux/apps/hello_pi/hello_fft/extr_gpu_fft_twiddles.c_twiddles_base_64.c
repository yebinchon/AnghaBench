
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cos (double) ;
 int sin (double) ;
 float* twiddles_base_32 (double,float*,int ) ;

__attribute__((used)) static float *twiddles_base_64(double two_pi, float *out) {
    int i;
    for (i=0; i<32; i++) {
        *out++ = cos(two_pi/64*i);
        *out++ = sin(two_pi/64*i);
    }
    return twiddles_base_32(two_pi, out, 0);
}
