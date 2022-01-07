
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int size; } ;


 TYPE_1__* shaders ;

unsigned int gpu_fft_shader_size(int log2_N) {
    return shaders[log2_N-8].size;
}
