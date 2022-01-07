
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cptr; unsigned int* uptr; int fptr; scalar_t__ vptr; } ;
struct GPU_FFT_PTR {scalar_t__ vc; TYPE_1__ arm; } ;
struct GPU_FFT_BASE {scalar_t__ vc_msg; void* vc_code; void** vc_unifs; } ;
struct GPU_FFT {int x; int y; int in; int out; unsigned int step; } ;
typedef int COMPLEX ;


 int GPU_FFT_BUSY_WAIT_LIMIT ;
 int GPU_FFT_QPUS ;
 int gpu_fft_alloc (int,unsigned int,struct GPU_FFT_PTR*) ;
 void* gpu_fft_ptr_inc (struct GPU_FFT_PTR*,int) ;
 int gpu_fft_shader_code (int) ;
 unsigned int gpu_fft_shader_size (int) ;
 int gpu_fft_twiddle_data (int,int,int ) ;
 scalar_t__ gpu_fft_twiddle_size (int,int*,int*,int*) ;
 int memcpy (scalar_t__,int ,unsigned int) ;

int gpu_fft_prepare(
    int mb,
    int log2_N,
    int direction,
    int jobs,
    struct GPU_FFT **fft) {

    unsigned info_bytes, twid_bytes, data_bytes, code_bytes, unif_bytes, mail_bytes;
    unsigned size, *uptr, vc_tw, vc_data;
    int i, q, shared, unique, passes, ret;

    struct GPU_FFT_BASE *base;
    struct GPU_FFT_PTR ptr;
    struct GPU_FFT *info;

    if (gpu_fft_twiddle_size(log2_N, &shared, &unique, &passes)) return -2;

    info_bytes = 4096;
    data_bytes = (1+((sizeof(COMPLEX)<<log2_N)|4095));
    code_bytes = gpu_fft_shader_size(log2_N);
    twid_bytes = sizeof(COMPLEX)*16*(shared+GPU_FFT_QPUS*unique);
    unif_bytes = sizeof(int)*GPU_FFT_QPUS*(5+jobs*2);
    mail_bytes = sizeof(int)*GPU_FFT_QPUS*2;

    size = info_bytes +
            data_bytes*jobs*2 +
            code_bytes +
            twid_bytes +
            unif_bytes +
            mail_bytes;

    ret = gpu_fft_alloc(mb, size, &ptr);
    if (ret) return ret;


    info = (struct GPU_FFT *) ptr.arm.vptr;
    base = (struct GPU_FFT_BASE *) info;
    gpu_fft_ptr_inc(&ptr, info_bytes);


    info->x = 1<<log2_N;
    info->y = jobs;


    info->in = info->out = ptr.arm.cptr;
    info->step = data_bytes / sizeof(COMPLEX);
    if (passes&1) info->out += info->step * jobs;
    vc_data = gpu_fft_ptr_inc(&ptr, data_bytes*jobs*2);


    memcpy(ptr.arm.vptr, gpu_fft_shader_code(log2_N), code_bytes);
    base->vc_code = gpu_fft_ptr_inc(&ptr, code_bytes);


    gpu_fft_twiddle_data(log2_N, direction, ptr.arm.fptr);
    vc_tw = gpu_fft_ptr_inc(&ptr, twid_bytes);

    uptr = ptr.arm.uptr;


    for (q=0; q<GPU_FFT_QPUS; q++) {
        *uptr++ = vc_tw;
        *uptr++ = vc_tw + sizeof(COMPLEX)*16*(shared + q*unique);
        *uptr++ = q;
        for (i=0; i<jobs; i++) {
            *uptr++ = vc_data + data_bytes*i;
            *uptr++ = vc_data + data_bytes*i + data_bytes*jobs;
        }
        *uptr++ = 0;
        *uptr++ = (q==0);

        base->vc_unifs[q] = gpu_fft_ptr_inc(&ptr, sizeof(int)*(5+jobs*2));
    }

    if ((jobs<<log2_N) <= GPU_FFT_BUSY_WAIT_LIMIT) {

        base->vc_msg = 0;
    }
    else {

        for (q=0; q<GPU_FFT_QPUS; q++) {
            *uptr++ = base->vc_unifs[q];
            *uptr++ = base->vc_code;
        }

        base->vc_msg = ptr.vc;
    }

    *fft = info;
    return 0;
}
