
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bptr; } ;
struct GPU_FFT_PTR {unsigned int vc; TYPE_1__ arm; } ;



unsigned gpu_fft_ptr_inc (
    struct GPU_FFT_PTR *ptr,
    int bytes) {

    unsigned vc = ptr->vc;
    ptr->vc += bytes;
    ptr->arm.bptr += bytes;
    return vc;
}
