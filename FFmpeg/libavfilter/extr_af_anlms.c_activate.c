
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_24__ {int pts; int nb_samples; } ;
struct TYPE_23__ {scalar_t__ channels; } ;
struct TYPE_22__ {int nb_inputs; int * inputs; TYPE_7__** outputs; TYPE_1__* internal; TYPE_2__* priv; } ;
struct TYPE_21__ {int pts; } ;
struct TYPE_20__ {TYPE_9__** frame; } ;
struct TYPE_19__ {int (* execute ) (TYPE_4__*,int ,TYPE_3__*,int *,int) ;} ;
typedef TYPE_2__ AudioNLMSContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (scalar_t__,scalar_t__) ;
 int FF_FILTER_FORWARD_STATUS_BACK_ALL (TYPE_7__*,TYPE_4__*) ;
 int av_frame_free (TYPE_9__**) ;
 int ff_filter_frame (TYPE_7__*,TYPE_3__*) ;
 scalar_t__ ff_filter_get_nb_threads (TYPE_4__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_7__*,int ) ;
 scalar_t__ ff_inlink_acknowledge_status (int ,int*,int *) ;
 scalar_t__ ff_inlink_check_available_samples (int ,int) ;
 int ff_inlink_consume_samples (int ,int,int,TYPE_9__**) ;
 scalar_t__ ff_inlink_queued_samples (int ) ;
 int ff_inlink_request_frame (int ) ;
 scalar_t__ ff_outlink_frame_wanted (TYPE_7__*) ;
 int ff_outlink_set_status (TYPE_7__*,int,int ) ;
 int process_channels ;
 int stub1 (TYPE_4__*,int ,TYPE_3__*,int *,int) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AudioNLMSContext *s = ctx->priv;
    int i, ret, status;
    int nb_samples;
    int64_t pts;

    FF_FILTER_FORWARD_STATUS_BACK_ALL(ctx->outputs[0], ctx);

    nb_samples = FFMIN(ff_inlink_queued_samples(ctx->inputs[0]),
                       ff_inlink_queued_samples(ctx->inputs[1]));
    for (i = 0; i < ctx->nb_inputs && nb_samples > 0; i++) {
        if (s->frame[i])
            continue;

        if (ff_inlink_check_available_samples(ctx->inputs[i], nb_samples) > 0) {
            ret = ff_inlink_consume_samples(ctx->inputs[i], nb_samples, nb_samples, &s->frame[i]);
            if (ret < 0)
                return ret;
        }
    }

    if (s->frame[0] && s->frame[1]) {
        AVFrame *out;

        out = ff_get_audio_buffer(ctx->outputs[0], s->frame[0]->nb_samples);
        if (!out) {
            av_frame_free(&s->frame[0]);
            av_frame_free(&s->frame[1]);
            return AVERROR(ENOMEM);
        }

        ctx->internal->execute(ctx, process_channels, out, ((void*)0), FFMIN(ctx->outputs[0]->channels,
                                                                       ff_filter_get_nb_threads(ctx)));

        out->pts = s->frame[0]->pts;

        av_frame_free(&s->frame[0]);
        av_frame_free(&s->frame[1]);

        ret = ff_filter_frame(ctx->outputs[0], out);
        if (ret < 0)
            return ret;
    }

    if (!nb_samples) {
        for (i = 0; i < 2; i++) {
            if (ff_inlink_acknowledge_status(ctx->inputs[i], &status, &pts)) {
                ff_outlink_set_status(ctx->outputs[0], status, pts);
                return 0;
            }
        }
    }

    if (ff_outlink_frame_wanted(ctx->outputs[0])) {
        for (i = 0; i < 2; i++) {
            if (ff_inlink_queued_samples(ctx->inputs[i]) > 0)
                continue;
            ff_inlink_request_frame(ctx->inputs[i]);
            return 0;
        }
    }
    return 0;
}
