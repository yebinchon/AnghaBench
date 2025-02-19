
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int nb_inputs; int * inputs; int * outputs; } ;
typedef TYPE_1__ AVFilterContext ;


 int FFMIN (int,int) ;
 int FF_FILTER_FORWARD_STATUS_BACK_ALL (int ,TYPE_1__*) ;
 scalar_t__ ff_inlink_acknowledge_status (int ,int*,int *) ;
 int ff_inlink_queued_samples (int ) ;
 int ff_inlink_request_frame (int ) ;
 scalar_t__ ff_outlink_frame_wanted (int ) ;
 int ff_outlink_set_status (int ,int,int ) ;
 int try_push_frame (TYPE_1__*,int) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    int i, status;
    int ret, nb_samples;
    int64_t pts;

    FF_FILTER_FORWARD_STATUS_BACK_ALL(ctx->outputs[0], ctx);

    nb_samples = ff_inlink_queued_samples(ctx->inputs[0]);
    for (i = 1; i < ctx->nb_inputs && nb_samples > 0; i++) {
        nb_samples = FFMIN(ff_inlink_queued_samples(ctx->inputs[i]), nb_samples);
    }

    if (nb_samples) {
        ret = try_push_frame(ctx, nb_samples);
        if (ret < 0)
            return ret;
    }

    for (i = 0; i < ctx->nb_inputs; i++) {
        if (ff_inlink_queued_samples(ctx->inputs[i]))
            continue;

        if (ff_inlink_acknowledge_status(ctx->inputs[i], &status, &pts)) {
            ff_outlink_set_status(ctx->outputs[0], status, pts);
            return 0;
        } else if (ff_outlink_frame_wanted(ctx->outputs[0])) {
            ff_inlink_request_frame(ctx->inputs[i]);
            return 0;
        }
    }

    return 0;
}
