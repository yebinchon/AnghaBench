
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct GPU_FFT_TRANS {int dummy; } ;
struct TYPE_4__ {int* uptr; scalar_t__ vptr; } ;
struct GPU_FFT_PTR {TYPE_2__ arm; } ;
struct GPU_FFT_COMPLEX {int dummy; } ;
struct GPU_FFT_BASE {int vc_code; int* vc_unifs; void* vc_msg; } ;
struct TYPE_3__ {int vc_msg; } ;
struct GPU_FFT {int step; int x; int y; TYPE_1__ base; scalar_t__ in; scalar_t__ out; } ;


 int gpu_fft_alloc (int,unsigned int,struct GPU_FFT_PTR*) ;
 void* gpu_fft_ptr_inc (struct GPU_FFT_PTR*,unsigned int) ;
 int memcpy (scalar_t__,int ,unsigned int) ;
 int shader_trans ;

int gpu_fft_trans_prepare(
    int mb,
    struct GPU_FFT *src,
    struct GPU_FFT *dst,
    struct GPU_FFT_TRANS **out) {

    unsigned size, info_bytes, code_bytes, unif_bytes, mail_bytes;
    int ret;

    struct GPU_FFT_TRANS *info;
    struct GPU_FFT_BASE *base;
    struct GPU_FFT_PTR ptr;

    info_bytes = code_bytes = unif_bytes = mail_bytes = 4096;

    size = info_bytes +
            code_bytes +
            unif_bytes +
            mail_bytes;

    ret = gpu_fft_alloc(mb, size, &ptr);
    if (ret) return ret;


    info = (struct GPU_FFT_TRANS *) ptr.arm.vptr;
    base = (struct GPU_FFT_BASE *) info;
    gpu_fft_ptr_inc(&ptr, info_bytes);


    memcpy(ptr.arm.vptr, shader_trans, code_bytes);
    base->vc_code = gpu_fft_ptr_inc(&ptr, code_bytes);


    ptr.arm.uptr[0] = src->base.vc_msg;
    ptr.arm.uptr[1] = ((char*)src->out) - ((char*)src->in);
    ptr.arm.uptr[2] = dst->base.vc_msg;
    ptr.arm.uptr[3] = 0;
    ptr.arm.uptr[4] = src->step * sizeof(struct GPU_FFT_COMPLEX);
    ptr.arm.uptr[5] = dst->step * sizeof(struct GPU_FFT_COMPLEX);
    ptr.arm.uptr[6] = src->x < dst->y? src->x : dst->y;
    ptr.arm.uptr[7] = src->y < dst->x? src->y : dst->x;
    base->vc_unifs[0] = gpu_fft_ptr_inc(&ptr, unif_bytes);


    ptr.arm.uptr[0] = base->vc_unifs[0];
    ptr.arm.uptr[1] = base->vc_code;
    base->vc_msg = gpu_fft_ptr_inc(&ptr, mail_bytes);

    *out = info;
    return 0;
}
