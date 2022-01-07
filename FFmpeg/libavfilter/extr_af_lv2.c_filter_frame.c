
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int * outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {TYPE_4__* dst; } ;
struct TYPE_17__ {int nb_samples; } ;
struct TYPE_16__ {scalar_t__ nb_outputs; scalar_t__ nb_inputs; int instance; } ;
typedef TYPE_1__ LV2Context ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 scalar_t__ av_frame_is_writable (TYPE_2__*) ;
 int connect_ports (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int ff_filter_frame (int ,TYPE_2__*) ;
 TYPE_2__* ff_get_audio_buffer (int ,int ) ;
 int lilv_instance_run (int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    LV2Context *s = ctx->priv;
    AVFrame *out;

    if (!s->nb_outputs ||
        (av_frame_is_writable(in) && s->nb_inputs == s->nb_outputs)) {
        out = in;
    } else {
        out = ff_get_audio_buffer(ctx->outputs[0], in->nb_samples);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    connect_ports(s, in, out);

    lilv_instance_run(s->instance, in->nb_samples);

    if (out != in)
        av_frame_free(&in);

    return ff_filter_frame(ctx->outputs[0], out);
}
