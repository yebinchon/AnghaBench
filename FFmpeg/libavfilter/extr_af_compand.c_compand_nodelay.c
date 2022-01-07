
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int * outputs; TYPE_4__** inputs; TYPE_1__* priv; } ;
struct TYPE_19__ {int channels; } ;
struct TYPE_18__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_17__ {int volume; } ;
struct TYPE_16__ {TYPE_2__* channels; } ;
typedef TYPE_1__ CompandContext ;
typedef TYPE_2__ ChanParam ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 scalar_t__ av_frame_is_writable (TYPE_3__*) ;
 int fabs (double const) ;
 int ff_filter_frame (int ,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (int ,int const) ;
 double const get_volume (TYPE_1__*,int ) ;
 int update_volume (TYPE_2__*,int ) ;

__attribute__((used)) static int compand_nodelay(AVFilterContext *ctx, AVFrame *frame)
{
    CompandContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    const int channels = inlink->channels;
    const int nb_samples = frame->nb_samples;
    AVFrame *out_frame;
    int chan, i;
    int err;

    if (av_frame_is_writable(frame)) {
        out_frame = frame;
    } else {
        out_frame = ff_get_audio_buffer(ctx->outputs[0], nb_samples);
        if (!out_frame) {
            av_frame_free(&frame);
            return AVERROR(ENOMEM);
        }
        err = av_frame_copy_props(out_frame, frame);
        if (err < 0) {
            av_frame_free(&out_frame);
            av_frame_free(&frame);
            return err;
        }
    }

    for (chan = 0; chan < channels; chan++) {
        const double *src = (double *)frame->extended_data[chan];
        double *dst = (double *)out_frame->extended_data[chan];
        ChanParam *cp = &s->channels[chan];

        for (i = 0; i < nb_samples; i++) {
            update_volume(cp, fabs(src[i]));

            dst[i] = src[i] * get_volume(s, cp->volume);
        }
    }

    if (frame != out_frame)
        av_frame_free(&frame);

    return ff_filter_frame(ctx->outputs[0], out_frame);
}
