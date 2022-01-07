
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_22__ {int* n_clippings; int temp_afft; int temp_fft; int temp_src; int ringbuffer; int ir; int delay; int write; TYPE_4__* out; TYPE_4__* in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_26__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_25__ {TYPE_6__* dst; } ;
struct TYPE_24__ {int nb_samples; } ;
struct TYPE_23__ {scalar_t__ type; int temp_afft; int temp_fft; int temp_src; int ringbuffer; int data_ir; int delay; int write; } ;
struct TYPE_21__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int) ;} ;
typedef TYPE_3__ SOFAlizerContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 scalar_t__ FREQUENCY_DOMAIN ;
 scalar_t__ TIME_DOMAIN ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int av_log (TYPE_6__*,int ,char*,int,int) ;
 int emms_c () ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 TYPE_4__* ff_get_audio_buffer (TYPE_5__*,int) ;
 int sofalizer_convolute ;
 int sofalizer_fast_convolute ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int) ;
 int stub2 (TYPE_6__*,int ,TYPE_2__*,int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    SOFAlizerContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int n_clippings[2] = { 0 };
    ThreadData td;
    AVFrame *out;

    out = ff_get_audio_buffer(outlink, in->nb_samples);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    td.in = in; td.out = out; td.write = s->write;
    td.delay = s->delay; td.ir = s->data_ir; td.n_clippings = n_clippings;
    td.ringbuffer = s->ringbuffer; td.temp_src = s->temp_src;
    td.temp_fft = s->temp_fft;
    td.temp_afft = s->temp_afft;

    if (s->type == TIME_DOMAIN) {
        ctx->internal->execute(ctx, sofalizer_convolute, &td, ((void*)0), 2);
    } else if (s->type == FREQUENCY_DOMAIN) {
        ctx->internal->execute(ctx, sofalizer_fast_convolute, &td, ((void*)0), 2);
    }
    emms_c();


    if (n_clippings[0] + n_clippings[1] > 0) {
        av_log(ctx, AV_LOG_WARNING, "%d of %d samples clipped. Please reduce gain.\n",
               n_clippings[0] + n_clippings[1], out->nb_samples * 2);
    }

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
