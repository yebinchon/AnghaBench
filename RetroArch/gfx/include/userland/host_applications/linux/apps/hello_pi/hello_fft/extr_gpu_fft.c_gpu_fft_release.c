
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GPU_FFT {int base; } ;


 int gpu_fft_base_release (int *) ;

void gpu_fft_release(struct GPU_FFT *info) {
    gpu_fft_base_release(&info->base);
}
