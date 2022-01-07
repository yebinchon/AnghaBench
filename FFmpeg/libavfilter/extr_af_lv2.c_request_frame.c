
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_16__ {int * inputs; scalar_t__ nb_inputs; TYPE_1__* priv; } ;
struct TYPE_15__ {TYPE_4__* src; } ;
struct TYPE_14__ {int pts; int sample_rate; int nb_samples; } ;
struct TYPE_13__ {scalar_t__ duration; scalar_t__ nb_samples; int pts; int sample_rate; int instance; } ;
typedef TYPE_1__ LV2Context ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_TIME_BASE ;
 int ENOMEM ;
 scalar_t__ av_rescale (int ,int ,int ) ;
 int connect_ports (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,scalar_t__) ;
 int ff_request_frame (int ) ;
 int lilv_instance_run (int ,int ) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LV2Context *s = ctx->priv;
    AVFrame *out;
    int64_t t;

    if (ctx->nb_inputs)
        return ff_request_frame(ctx->inputs[0]);

    t = av_rescale(s->pts, AV_TIME_BASE, s->sample_rate);
    if (s->duration >= 0 && t >= s->duration)
        return AVERROR_EOF;

    out = ff_get_audio_buffer(outlink, s->nb_samples);
    if (!out)
        return AVERROR(ENOMEM);

    connect_ports(s, out, out);

    lilv_instance_run(s->instance, out->nb_samples);

    out->sample_rate = s->sample_rate;
    out->pts = s->pts;
    s->pts += s->nb_samples;

    return ff_filter_frame(outlink, out);
}
