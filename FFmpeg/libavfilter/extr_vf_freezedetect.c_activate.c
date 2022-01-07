
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_14__ ;


typedef scalar_t__ int64_t ;
struct TYPE_29__ {TYPE_1__* priv; TYPE_3__** outputs; TYPE_3__** inputs; } ;
struct TYPE_25__ {scalar_t__ num; } ;
struct TYPE_28__ {int time_base; TYPE_14__ frame_rate; } ;
struct TYPE_27__ {scalar_t__ pts; } ;
struct TYPE_26__ {scalar_t__ n; scalar_t__ reference_n; scalar_t__ duration; int frozen; TYPE_2__* reference_frame; } ;
typedef TYPE_1__ FreezeDetectContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 int ENOMEM ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS (TYPE_3__*,TYPE_3__*) ;
 int FF_FILTER_FORWARD_STATUS_BACK (TYPE_3__*,TYPE_3__*) ;
 int FF_FILTER_FORWARD_WANTED (TYPE_3__*,TYPE_3__*) ;
 TYPE_2__* av_frame_clone (TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int av_inv_q (TYPE_14__) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 int av_ts2timestr (scalar_t__,int *) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 int ff_inlink_consume_frame (TYPE_3__*,TYPE_2__**) ;
 int is_frozen (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int set_meta (TYPE_1__*,TYPE_2__*,char*,int ) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    int ret;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    FreezeDetectContext *s = ctx->priv;
    AVFrame *frame;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    ret = ff_inlink_consume_frame(inlink, &frame);
    if (ret < 0)
        return ret;

    if (frame) {
        int frozen = 0;
        s->n++;

        if (s->reference_frame) {
            int64_t duration;
            if (s->reference_frame->pts == AV_NOPTS_VALUE || frame->pts == AV_NOPTS_VALUE || frame->pts < s->reference_frame->pts)
                duration = inlink->frame_rate.num > 0 ? av_rescale_q(s->n - s->reference_n, av_inv_q(inlink->frame_rate), AV_TIME_BASE_Q) : 0;
            else
                duration = av_rescale_q(frame->pts - s->reference_frame->pts, inlink->time_base, AV_TIME_BASE_Q);

            frozen = is_frozen(s, s->reference_frame, frame);
            if (duration >= s->duration) {
                if (!s->frozen)
                    set_meta(s, frame, "lavfi.freezedetect.freeze_start", av_ts2timestr(s->reference_frame->pts, &inlink->time_base));
                if (!frozen) {
                    set_meta(s, frame, "lavfi.freezedetect.freeze_duration", av_ts2timestr(duration, &AV_TIME_BASE_Q));
                    set_meta(s, frame, "lavfi.freezedetect.freeze_end", av_ts2timestr(frame->pts, &inlink->time_base));
                }
                s->frozen = frozen;
            }
        }

        if (!frozen) {
            av_frame_free(&s->reference_frame);
            s->reference_frame = av_frame_clone(frame);
            s->reference_n = s->n;
            if (!s->reference_frame) {
                av_frame_free(&frame);
                return AVERROR(ENOMEM);
            }
        }
        return ff_filter_frame(outlink, frame);
    }

    FF_FILTER_FORWARD_STATUS(inlink, outlink);
    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
