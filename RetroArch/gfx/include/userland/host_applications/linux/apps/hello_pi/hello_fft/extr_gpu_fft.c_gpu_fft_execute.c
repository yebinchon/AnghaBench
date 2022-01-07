
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GPU_FFT {int base; } ;


 int GPU_FFT_QPUS ;
 int gpu_fft_base_exec (int *,int ) ;

unsigned gpu_fft_execute(struct GPU_FFT *info) {
    return gpu_fft_base_exec(&info->base, GPU_FFT_QPUS);
}
