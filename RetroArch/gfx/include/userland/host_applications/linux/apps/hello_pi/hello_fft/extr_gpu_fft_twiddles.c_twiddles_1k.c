
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double GPU_FFT_QPUS ;
 float* twiddles_base_32 (double,float*,double) ;
 float* twiddles_step_32 (double,float*,double) ;

__attribute__((used)) static void twiddles_1k(double two_pi, float *out) {
    double N=1024;
    int q;

    out = twiddles_base_32(two_pi, out, 0);
    out = twiddles_step_32(two_pi, out, two_pi/N * GPU_FFT_QPUS);

    for (q=0; q<GPU_FFT_QPUS; q++)
        out = twiddles_base_32(two_pi, out, two_pi/N*q);
}
