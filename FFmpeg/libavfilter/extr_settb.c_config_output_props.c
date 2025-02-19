
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_11__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_12__ {TYPE_2__ time_base; TYPE_4__* src; int h; int w; void* sample_rate; } ;
struct TYPE_10__ {int tb_expr; void** var_values; } ;
typedef TYPE_1__ SetTBContext ;
typedef TYPE_2__ AVRational ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 TYPE_2__ AV_TIME_BASE_Q ;
 int EINVAL ;
 int INT_MAX ;
 size_t VAR_AVTB ;
 size_t VAR_INTB ;
 size_t VAR_SR ;
 TYPE_2__ av_d2q (double,int ) ;
 int av_expr_parse_and_eval (double*,int ,int ,void**,int *,int *,int *,int *,int *,int ,int *) ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__,...) ;
 void* av_q2d (TYPE_2__) ;
 int var_names ;

__attribute__((used)) static int config_output_props(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SetTBContext *settb = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    AVRational time_base;
    int ret;
    double res;

    settb->var_values[VAR_AVTB] = av_q2d(AV_TIME_BASE_Q);
    settb->var_values[VAR_INTB] = av_q2d(inlink->time_base);
    settb->var_values[VAR_SR] = inlink->sample_rate;

    outlink->w = inlink->w;
    outlink->h = inlink->h;

    if ((ret = av_expr_parse_and_eval(&res, settb->tb_expr, var_names, settb->var_values,
                                      ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0))) < 0) {
        av_log(ctx, AV_LOG_ERROR, "Invalid expression '%s' for timebase.\n", settb->tb_expr);
        return ret;
    }
    time_base = av_d2q(res, INT_MAX);
    if (time_base.num <= 0 || time_base.den <= 0) {
        av_log(ctx, AV_LOG_ERROR,
               "Invalid non-positive values for the timebase num:%d or den:%d.\n",
               time_base.num, time_base.den);
        return AVERROR(EINVAL);
    }

    outlink->time_base = time_base;
    av_log(outlink->src, AV_LOG_VERBOSE, "tb:%d/%d -> tb:%d/%d\n",
           inlink ->time_base.num, inlink ->time_base.den,
           outlink->time_base.num, outlink->time_base.den);

    return 0;
}
