
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_17__ {int * inputs; scalar_t__ nb_inputs; TYPE_2__* priv; } ;
struct TYPE_16__ {TYPE_5__* src; } ;
struct TYPE_15__ {int pts; int sample_rate; scalar_t__* extended_data; } ;
struct TYPE_14__ {scalar_t__ duration; int nb_outputs; int nb_outputcontrols; scalar_t__ nb_samples; int pts; int sample_rate; int octlv; int ocmap; int * handles; TYPE_1__* desc; int * opmap; } ;
struct TYPE_13__ {int (* run ) (int ,scalar_t__) ;int (* connect_port ) (int ,int ,int *) ;} ;
typedef int LADSPA_Data ;
typedef TYPE_2__ LADSPAContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_INFO ;
 int AV_TIME_BASE ;
 int ENOMEM ;
 scalar_t__ av_rescale (int ,int ,int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,scalar_t__) ;
 int ff_request_frame (int ) ;
 int print_ctl_info (TYPE_5__*,int ,TYPE_2__*,int,int ,int ,int) ;
 int stub1 (int ,int ,int *) ;
 int stub2 (int ,scalar_t__) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LADSPAContext *s = ctx->priv;
    AVFrame *out;
    int64_t t;
    int i;

    if (ctx->nb_inputs)
        return ff_request_frame(ctx->inputs[0]);

    t = av_rescale(s->pts, AV_TIME_BASE, s->sample_rate);
    if (s->duration >= 0 && t >= s->duration)
        return AVERROR_EOF;

    out = ff_get_audio_buffer(outlink, s->nb_samples);
    if (!out)
        return AVERROR(ENOMEM);

    for (i = 0; i < s->nb_outputs; i++)
        s->desc->connect_port(s->handles[0], s->opmap[i],
                (LADSPA_Data*)out->extended_data[i]);

    s->desc->run(s->handles[0], s->nb_samples);

    for (i = 0; i < s->nb_outputcontrols; i++)
        print_ctl_info(ctx, AV_LOG_INFO, s, i, s->ocmap, s->octlv, 1);

    out->sample_rate = s->sample_rate;
    out->pts = s->pts;
    s->pts += s->nb_samples;

    return ff_filter_frame(outlink, out);
}
