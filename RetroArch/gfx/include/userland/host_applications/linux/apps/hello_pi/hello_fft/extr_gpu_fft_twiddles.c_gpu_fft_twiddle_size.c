
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shared; int unique; int passes; } ;


 TYPE_1__* shaders ;

int gpu_fft_twiddle_size(int log2_N, int *shared, int *unique, int *passes) {
    if (log2_N<8 || log2_N>22) return -1;
    *shared = shaders[log2_N-8].shared;
    *unique = shaders[log2_N-8].unique;
    *passes = shaders[log2_N-8].passes;
    return 0;
}
