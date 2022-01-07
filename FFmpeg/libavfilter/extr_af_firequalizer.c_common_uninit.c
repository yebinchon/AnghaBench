
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conv_idx; int conv_buf; int cepstrum_buf; int kernel_buf; int kernel_tmp_buf; int dump_buf; int analysis_buf; int * cepstrum_irdft; int * cepstrum_rdft; int * fft_ctx; int * irdft; int * rdft; int * analysis_irdft; int * analysis_rdft; } ;
typedef TYPE_1__ FIREqualizerContext ;


 int av_fft_end (int *) ;
 int av_freep (int *) ;
 int av_rdft_end (int *) ;

__attribute__((used)) static void common_uninit(FIREqualizerContext *s)
{
    av_rdft_end(s->analysis_rdft);
    av_rdft_end(s->analysis_irdft);
    av_rdft_end(s->rdft);
    av_rdft_end(s->irdft);
    av_fft_end(s->fft_ctx);
    av_rdft_end(s->cepstrum_rdft);
    av_rdft_end(s->cepstrum_irdft);
    s->analysis_rdft = s->analysis_irdft = s->rdft = s->irdft = ((void*)0);
    s->fft_ctx = ((void*)0);
    s->cepstrum_rdft = ((void*)0);
    s->cepstrum_irdft = ((void*)0);

    av_freep(&s->analysis_buf);
    av_freep(&s->dump_buf);
    av_freep(&s->kernel_tmp_buf);
    av_freep(&s->kernel_buf);
    av_freep(&s->cepstrum_buf);
    av_freep(&s->conv_buf);
    av_freep(&s->conv_idx);
}
