
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; int ** outputs; int ** inputs; } ;
struct TYPE_4__ {int nb_samples; } ;
typedef TYPE_1__ RubberBandContext ;
typedef int AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int FFERROR_NOT_READY ;
 int FF_FILTER_FORWARD_STATUS (int *,int *) ;
 int FF_FILTER_FORWARD_STATUS_BACK (int *,int *) ;
 int FF_FILTER_FORWARD_WANTED (int *,int *) ;
 int ff_inlink_consume_samples (int *,int ,int ,int **) ;
 int filter_frame (int *,int *) ;

__attribute__((used)) static int activate(AVFilterContext *ctx)
{
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    RubberBandContext *s = ctx->priv;
    AVFrame *in = ((void*)0);
    int ret;

    FF_FILTER_FORWARD_STATUS_BACK(outlink, inlink);

    ret = ff_inlink_consume_samples(inlink, s->nb_samples, s->nb_samples, &in);
    if (ret < 0)
        return ret;
    if (ret > 0) {
        ret = filter_frame(inlink, in);
        if (ret != 0)
            return ret;
    }

    FF_FILTER_FORWARD_STATUS(inlink, outlink);
    FF_FILTER_FORWARD_WANTED(outlink, inlink);

    return FFERROR_NOT_READY;
}
