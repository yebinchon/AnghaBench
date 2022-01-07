
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_18__ {TYPE_2__** outputs; TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_17__ {int time_base; } ;
struct TYPE_16__ {double* var_values; } ;
typedef TYPE_1__ SetPTSContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_TRACE ;
 int D2TS (double) ;
 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS_BACK (TYPE_2__*,TYPE_2__*) ;
 int FF_FILTER_FORWARD_WANTED (TYPE_2__*,TYPE_2__*) ;
 int TS2T (double,int ) ;
 size_t VAR_POS ;
 size_t VAR_PTS ;
 size_t VAR_T ;
 int av_log (TYPE_3__*,int ,char*,int ,double,int ,int ,int ) ;
 int d2istr (double) ;
 double eval_pts (TYPE_1__*,TYPE_2__*,int *,int ) ;
 scalar_t__ ff_inlink_acknowledge_status (TYPE_2__*,int*,int *) ;
 int ff_inlink_consume_frame (TYPE_2__*,int **) ;
 int ff_outlink_set_status (TYPE_2__*,int,int ) ;
 int filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    SetPTSContext *setpts = ctx->priv;
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
        double d = eval_pts(setpts, inlink, ((void*)0), pts);

        av_log(ctx, AV_LOG_TRACE, "N:EOF PTS:%s T:%f POS:%s -> PTS:%s T:%f\n",
               d2istr(setpts->var_values[VAR_PTS]),
               setpts->var_values[VAR_T],
               d2istr(setpts->var_values[VAR_POS]),
               d2istr(d), TS2T(d, inlink->time_base));
        ff_outlink_set_status(outlink, status, D2TS(d));
        return 0;
    }

    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
