
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int ** outputs; int ** inputs; } ;
typedef int AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_1__ AVFilterContext ;


 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 scalar_t__ ff_inlink_acknowledge_status (int *,int*,int *) ;
 int ff_inlink_consume_frame (int *,int **) ;
 int ff_outlink_set_status (int *,int,int ) ;
 int filter_frame (int *,int *) ;
 int rescale_pts (int *,int *,int ) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *in;
    int status;
    int64_t pts;
    int ret;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    ret = ff_inlink_consume_frame(inlink, &in);
    if (ret < 0)
        return ret;
    if (ret > 0)
        return filter_frame(inlink, in);

    if (ff_inlink_acknowledge_status(inlink, &status, &pts)) {
        ff_outlink_set_status(outlink, status, rescale_pts(inlink, outlink, pts));
        return 0;
    }

    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
