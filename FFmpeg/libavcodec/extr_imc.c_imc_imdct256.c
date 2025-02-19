
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int re; int im; } ;
struct TYPE_11__ {int (* fft_calc ) (TYPE_3__*,TYPE_4__*) ;int (* fft_permute ) (TYPE_3__*,TYPE_4__*) ;} ;
struct TYPE_10__ {int* CWdecoded; float* last_fft_im; } ;
struct TYPE_9__ {float* out_samples; int* pre_coef1; int* pre_coef2; float* post_cos; float* post_sin; float* mdct_sine_window; TYPE_4__* samples; TYPE_3__ fft; } ;
typedef TYPE_1__ IMCContext ;
typedef TYPE_2__ IMCChannel ;


 int COEFFS ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;
 int stub2 (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void imc_imdct256(IMCContext *q, IMCChannel *chctx, int channels)
{
    int i;
    float re, im;
    float *dst1 = q->out_samples;
    float *dst2 = q->out_samples + (COEFFS - 1);


    for (i = 0; i < COEFFS / 2; i++) {
        q->samples[i].re = -(q->pre_coef1[i] * chctx->CWdecoded[COEFFS - 1 - i * 2]) -
                            (q->pre_coef2[i] * chctx->CWdecoded[i * 2]);
        q->samples[i].im = (q->pre_coef2[i] * chctx->CWdecoded[COEFFS - 1 - i * 2]) -
                            (q->pre_coef1[i] * chctx->CWdecoded[i * 2]);
    }


    q->fft.fft_permute(&q->fft, q->samples);
    q->fft.fft_calc(&q->fft, q->samples);


    for (i = 0; i < COEFFS / 2; i++) {
        re = ( q->samples[i].re * q->post_cos[i]) + (-q->samples[i].im * q->post_sin[i]);
        im = (-q->samples[i].im * q->post_cos[i]) - ( q->samples[i].re * q->post_sin[i]);
        *dst1 = (q->mdct_sine_window[COEFFS - 1 - i * 2] * chctx->last_fft_im[i])
               + (q->mdct_sine_window[i * 2] * re);
        *dst2 = (q->mdct_sine_window[i * 2] * chctx->last_fft_im[i])
               - (q->mdct_sine_window[COEFFS - 1 - i * 2] * re);
        dst1 += 2;
        dst2 -= 2;
        chctx->last_fft_im[i] = im;
    }
}
