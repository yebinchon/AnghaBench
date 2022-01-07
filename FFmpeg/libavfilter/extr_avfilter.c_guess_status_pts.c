
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {unsigned int nb_inputs; TYPE_1__** inputs; } ;
struct TYPE_5__ {int status_out; int time_base; int status_in_pts; int current_pts; } ;
typedef int AVRational ;
typedef TYPE_2__ AVFilterContext ;


 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ FFMIN (scalar_t__,int ) ;
 scalar_t__ INT64_MAX ;
 int av_log (TYPE_2__*,int ,char*) ;
 int av_rescale_q (int ,int ,int ) ;

__attribute__((used)) static int64_t guess_status_pts(AVFilterContext *ctx, int status, AVRational link_time_base)
{
    unsigned i;
    int64_t r = INT64_MAX;

    for (i = 0; i < ctx->nb_inputs; i++)
        if (ctx->inputs[i]->status_out == status)
            r = FFMIN(r, av_rescale_q(ctx->inputs[i]->current_pts, ctx->inputs[i]->time_base, link_time_base));
    if (r < INT64_MAX)
        return r;
    av_log(ctx, AV_LOG_WARNING, "EOF timestamp not reliable\n");
    for (i = 0; i < ctx->nb_inputs; i++)
        r = FFMIN(r, av_rescale_q(ctx->inputs[i]->status_in_pts, ctx->inputs[i]->time_base, link_time_base));
    if (r < INT64_MAX)
        return r;
    return AV_NOPTS_VALUE;
}
