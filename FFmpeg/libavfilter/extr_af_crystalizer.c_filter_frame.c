
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_18__ {TYPE_5__* dst; } ;
struct TYPE_17__ {int nb_samples; int channels; scalar_t__ extended_data; } ;
struct TYPE_16__ {int clip; int mult; TYPE_1__* prev; int (* filter ) (void**,void**,void const**,int,int ,int ,int ) ;} ;
struct TYPE_15__ {scalar_t__ extended_data; } ;
typedef TYPE_2__ CrystalizerContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 scalar_t__ av_frame_is_writable (TYPE_3__*) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 void* ff_get_audio_buffer (TYPE_4__*,int) ;
 int stub1 (void**,void**,void const**,int,int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    CrystalizerContext *s = ctx->priv;
    AVFrame *out;

    if (!s->prev) {
        s->prev = ff_get_audio_buffer(inlink, 1);
        if (!s->prev) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
    }

    if (av_frame_is_writable(in)) {
        out = in;
    } else {
        out = ff_get_audio_buffer(outlink, in->nb_samples);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    s->filter((void **)out->extended_data, (void **)s->prev->extended_data, (const void **)in->extended_data,
              in->nb_samples, in->channels, s->mult, s->clip);

    if (out != in)
        av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
