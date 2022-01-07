
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int * inputs; int * outputs; TYPE_1__* priv; } ;
struct TYPE_5__ {int fs; int ref; } ;
typedef TYPE_1__ BM3DContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterContext ;


 int FF_FILTER_FORWARD_STATUS_BACK (int ,int ) ;
 int av_frame_free (int **) ;
 int ff_filter_frame (int ,int *) ;
 int ff_framesync_activate (int *) ;
 scalar_t__ ff_inlink_acknowledge_status (int ,int*,int *) ;
 int ff_inlink_consume_frame (int ,int **) ;
 int ff_inlink_request_frame (int ) ;
 scalar_t__ ff_outlink_frame_wanted (int ) ;
 int ff_outlink_set_status (int ,int,int ) ;
 int filter_frame (TYPE_2__*,int **,int *,int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    BM3DContext *s = ctx->priv;

    if (!s->ref) {
        AVFrame *frame = ((void*)0);
        AVFrame *out = ((void*)0);
        int ret, status;
        int64_t pts;

        FF_FILTER_FORWARD_STATUS_BACK(ctx->outputs[0], ctx->inputs[0]);

        if ((ret = ff_inlink_consume_frame(ctx->inputs[0], &frame)) > 0) {
            ret = filter_frame(ctx, &out, frame, frame);
            av_frame_free(&frame);
            if (ret < 0)
                return ret;
            ret = ff_filter_frame(ctx->outputs[0], out);
        }
        if (ret < 0) {
            return ret;
        } else if (ff_inlink_acknowledge_status(ctx->inputs[0], &status, &pts)) {
            ff_outlink_set_status(ctx->outputs[0], status, pts);
            return 0;
        } else {
            if (ff_outlink_frame_wanted(ctx->outputs[0]))
                ff_inlink_request_frame(ctx->inputs[0]);
            return 0;
        }
    } else {
        return ff_framesync_activate(&s->fs);
    }
}
