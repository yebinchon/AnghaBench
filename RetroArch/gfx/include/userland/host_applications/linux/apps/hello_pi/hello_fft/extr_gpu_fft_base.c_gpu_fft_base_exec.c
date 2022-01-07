
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct GPU_FFT_BASE {scalar_t__ vc_msg; int mb; } ;


 int GPU_FFT_NO_FLUSH ;
 int GPU_FFT_TIMEOUT ;
 int execute_qpu (int ,int,scalar_t__,int ,int ) ;
 int gpu_fft_base_exec_direct (struct GPU_FFT_BASE*,int) ;

unsigned gpu_fft_base_exec(
    struct GPU_FFT_BASE *base,
    int num_qpus) {

    if (base->vc_msg) {


        return execute_qpu(base->mb, num_qpus, base->vc_msg, GPU_FFT_NO_FLUSH, GPU_FFT_TIMEOUT);
    }
    else {

        return gpu_fft_base_exec_direct(base, num_qpus);
    }
}
