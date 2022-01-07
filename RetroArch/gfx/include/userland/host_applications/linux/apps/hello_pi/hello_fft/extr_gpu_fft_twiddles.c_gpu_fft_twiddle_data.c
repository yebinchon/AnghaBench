
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* twiddles ) (int,float*) ;} ;


 int GPU_FFT_FWD ;
 int GPU_FFT_PI ;
 TYPE_1__* shaders ;
 int stub1 (int,float*) ;

void gpu_fft_twiddle_data(int log2_N, int direction, float *out) {
    shaders[log2_N-8].twiddles((direction==GPU_FFT_FWD?-2:2)*GPU_FFT_PI, out);
}
