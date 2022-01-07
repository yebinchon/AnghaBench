
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int * inputs; int * outputs; TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__* got_frame; int eof; scalar_t__ ppsrc; } ;
typedef TYPE_1__ FieldMatchContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR_EOF ;
 int FF_FILTER_FORWARD_STATUS_BACK_ALL (int ,TYPE_2__*) ;
 size_t INPUT_CLEANSRC ;
 size_t INPUT_MAIN ;
 scalar_t__ ff_inlink_acknowledge_status (int ,int*,int *) ;
 int ff_inlink_consume_frame (int ,int **) ;
 int ff_inlink_request_frame (int ) ;
 scalar_t__ ff_outlink_frame_wanted (int ) ;
 int ff_outlink_set_status (int ,int,int ) ;
 int filter_frame (int ,int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    FieldMatchContext *fm = ctx->priv;
    AVFrame *frame = ((void*)0);
    int ret = 0, status;
    int64_t pts;

    FF_FILTER_FORWARD_STATUS_BACK_ALL(ctx->outputs[0], ctx);

    if ((fm->got_frame[INPUT_MAIN] == 0) &&
        (ret = ff_inlink_consume_frame(ctx->inputs[INPUT_MAIN], &frame)) > 0) {
        ret = filter_frame(ctx->inputs[INPUT_MAIN], frame);
        if (ret < 0)
            return ret;
    }
    if (ret < 0)
        return ret;
    if (fm->ppsrc &&
        (fm->got_frame[INPUT_CLEANSRC] == 0) &&
        (ret = ff_inlink_consume_frame(ctx->inputs[INPUT_CLEANSRC], &frame)) > 0) {
        ret = filter_frame(ctx->inputs[INPUT_CLEANSRC], frame);
        if (ret < 0)
            return ret;
    }
    if (ret < 0) {
        return ret;
    } else if (ff_inlink_acknowledge_status(ctx->inputs[INPUT_MAIN], &status, &pts)) {
        if (status == AVERROR_EOF) {
            fm->eof |= 1 << INPUT_MAIN;
            ret = filter_frame(ctx->inputs[INPUT_MAIN], ((void*)0));
        }
        ff_outlink_set_status(ctx->outputs[0], status, pts);
        return ret;
    } else if (fm->ppsrc && ff_inlink_acknowledge_status(ctx->inputs[INPUT_CLEANSRC], &status, &pts)) {
        if (status == AVERROR_EOF) {
            fm->eof |= 1 << INPUT_CLEANSRC;
            ret = filter_frame(ctx->inputs[INPUT_CLEANSRC], ((void*)0));
        }
        ff_outlink_set_status(ctx->outputs[0], status, pts);
        return ret;
    } else {
        if (ff_outlink_frame_wanted(ctx->outputs[0])) {
            if (fm->got_frame[INPUT_MAIN] == 0)
                ff_inlink_request_frame(ctx->inputs[INPUT_MAIN]);
            if (fm->ppsrc && (fm->got_frame[INPUT_CLEANSRC] == 0))
                ff_inlink_request_frame(ctx->inputs[INPUT_CLEANSRC]);
        }
        return 0;
    }
}
