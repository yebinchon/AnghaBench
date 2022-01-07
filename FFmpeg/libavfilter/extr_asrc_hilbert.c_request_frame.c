
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* priv; } ;
struct TYPE_12__ {TYPE_4__* src; } ;
struct TYPE_11__ {scalar_t__ pts; int * data; } ;
struct TYPE_10__ {scalar_t__ pts; scalar_t__ taps; scalar_t__ nb_taps; int nb_samples; } ;
typedef TYPE_1__ HilbertContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int FFMIN (int ,scalar_t__) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,int) ;
 int memcpy (int ,scalar_t__,int) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    HilbertContext *s = ctx->priv;
    AVFrame *frame;
    int nb_samples;

    nb_samples = FFMIN(s->nb_samples, s->nb_taps - s->pts);
    if (!nb_samples)
        return AVERROR_EOF;

    if (!(frame = ff_get_audio_buffer(outlink, nb_samples)))
        return AVERROR(ENOMEM);

    memcpy(frame->data[0], s->taps + s->pts, nb_samples * sizeof(float));

    frame->pts = s->pts;
    s->pts += nb_samples;
    return ff_filter_frame(outlink, frame);
}
