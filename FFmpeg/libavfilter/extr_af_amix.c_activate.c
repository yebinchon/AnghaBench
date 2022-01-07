
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_24__ {scalar_t__ nb_frames; } ;
struct TYPE_23__ {TYPE_3__** inputs; TYPE_1__* priv; TYPE_3__** outputs; } ;
struct TYPE_22__ {int time_base; } ;
struct TYPE_21__ {int nb_samples; scalar_t__ extended_data; int pts; } ;
struct TYPE_20__ {int nb_inputs; int* input_state; TYPE_7__* frame_list; int next_pts; int * fifos; } ;
typedef TYPE_1__ MixContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR_EOF ;
 int FF_FILTER_FORWARD_STATUS_BACK_ALL (TYPE_3__*,TYPE_4__*) ;
 int INPUT_EOF ;
 int INPUT_ON ;
 int av_assert0 (int) ;
 scalar_t__ av_audio_fifo_size (int ) ;
 int av_audio_fifo_write (int ,void**,int ) ;
 int av_frame_free (TYPE_2__**) ;
 int av_rescale_q (int ,int ,int ) ;
 scalar_t__ calc_active_inputs (TYPE_1__*) ;
 scalar_t__ ff_inlink_acknowledge_status (TYPE_3__*,int*,int *) ;
 int ff_inlink_consume_frame (TYPE_3__*,TYPE_2__**) ;
 int ff_inlink_request_frame (TYPE_3__*) ;
 scalar_t__ ff_outlink_frame_wanted (TYPE_3__*) ;
 int ff_outlink_set_status (TYPE_3__*,int,int ) ;
 int frame_list_add_frame (TYPE_7__*,int ,int ) ;
 int frame_list_next_frame_size (TYPE_7__*) ;
 int output_frame (TYPE_3__*) ;
 int request_samples (TYPE_4__*,int) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *outlink = ctx->outputs[0];
    MixContext *s = ctx->priv;
    AVFrame *buf = ((void*)0);
    int i, ret;

    FF_FILTER_FORWARD_STATUS_BACK_ALL(outlink, ctx);

    for (i = 0; i < s->nb_inputs; i++) {
        AVFilterLink *inlink = ctx->inputs[i];

        if ((ret = ff_inlink_consume_frame(ctx->inputs[i], &buf)) > 0) {
            if (i == 0) {
                int64_t pts = av_rescale_q(buf->pts, inlink->time_base,
                                           outlink->time_base);
                ret = frame_list_add_frame(s->frame_list, buf->nb_samples, pts);
                if (ret < 0) {
                    av_frame_free(&buf);
                    return ret;
                }
            }

            ret = av_audio_fifo_write(s->fifos[i], (void **)buf->extended_data,
                                      buf->nb_samples);
            if (ret < 0) {
                av_frame_free(&buf);
                return ret;
            }

            av_frame_free(&buf);

            ret = output_frame(outlink);
            if (ret < 0)
                return ret;
        }
    }

    for (i = 0; i < s->nb_inputs; i++) {
        int64_t pts;
        int status;

        if (ff_inlink_acknowledge_status(ctx->inputs[i], &status, &pts)) {
            if (status == AVERROR_EOF) {
                if (i == 0) {
                    s->input_state[i] = 0;
                    if (s->nb_inputs == 1) {
                        ff_outlink_set_status(outlink, status, pts);
                        return 0;
                    }
                } else {
                    s->input_state[i] |= INPUT_EOF;
                    if (av_audio_fifo_size(s->fifos[i]) == 0) {
                        s->input_state[i] = 0;
                    }
                }
            }
        }
    }

    if (calc_active_inputs(s)) {
        ff_outlink_set_status(outlink, AVERROR_EOF, s->next_pts);
        return 0;
    }

    if (ff_outlink_frame_wanted(outlink)) {
        int wanted_samples;

        if (!(s->input_state[0] & INPUT_ON))
            return request_samples(ctx, 1);

        if (s->frame_list->nb_frames == 0) {
            ff_inlink_request_frame(ctx->inputs[0]);
            return 0;
        }
        av_assert0(s->frame_list->nb_frames > 0);

        wanted_samples = frame_list_next_frame_size(s->frame_list);

        return request_samples(ctx, wanted_samples);
    }

    return 0;
}
