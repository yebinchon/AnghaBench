
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int frame_len_bits; int block_len_bits; float** windows; int ** coefs; int * output; int * frame_out; TYPE_1__* fdsp; TYPE_3__* mdct_ctx; } ;
typedef TYPE_2__ WMACodecContext ;
struct TYPE_14__ {int channels; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_12__ {int (* mdct_calc ) (TYPE_3__*,int *,int *) ;} ;
struct TYPE_10__ {int (* vector_fmul ) (int ,int ,float const*,int) ;int (* vector_fmul_reverse ) (int *,int ,float const*,int) ;int (* vector_fmul_scalar ) (int ,float*,float,int) ;} ;
typedef TYPE_3__ FFTContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_5__*,int ,char*) ;
 int isfinite (int ) ;
 int memcpy (int *,int ,int) ;
 int stub1 (int ,float*,float,int) ;
 int stub2 (int *,int ,float const*,int) ;
 int stub3 (int ,int ,float const*,int) ;
 int stub4 (TYPE_3__*,int *,int *) ;

__attribute__((used)) static int apply_window_and_mdct(AVCodecContext *avctx, const AVFrame *frame)
{
    WMACodecContext *s = avctx->priv_data;
    float **audio = (float **) frame->extended_data;
    int len = frame->nb_samples;
    int window_index = s->frame_len_bits - s->block_len_bits;
    FFTContext *mdct = &s->mdct_ctx[window_index];
    int ch;
    const float *win = s->windows[window_index];
    int window_len = 1 << s->block_len_bits;
    float n = 2.0 * 32768.0 / window_len;

    for (ch = 0; ch < avctx->channels; ch++) {
        memcpy(s->output, s->frame_out[ch], window_len * sizeof(*s->output));
        s->fdsp->vector_fmul_scalar(s->frame_out[ch], audio[ch], n, len);
        s->fdsp->vector_fmul_reverse(&s->output[window_len], s->frame_out[ch],
                                    win, len);
        s->fdsp->vector_fmul(s->frame_out[ch], s->frame_out[ch], win, len);
        mdct->mdct_calc(mdct, s->coefs[ch], s->output);
        if (!isfinite(s->coefs[ch][0])) {
            av_log(avctx, AV_LOG_ERROR, "Input contains NaN/+-Inf\n");
            return AVERROR(EINVAL);
        }
    }

    return 0;
}
