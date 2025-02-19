
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int* var_values; int enable; int enable_str; } ;
struct TYPE_7__ {int frame_count_out; int w; int h; int time_base; TYPE_3__* dst; } ;
struct TYPE_6__ {int pts; int pkt_pos; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_NOPTS_VALUE ;
 int NAN ;
 size_t VAR_H ;
 size_t VAR_N ;
 size_t VAR_POS ;
 size_t VAR_T ;
 size_t VAR_W ;
 int av_expr_eval (int ,int*,int *) ;
 int av_q2d (int ) ;
 double fabs (int ) ;

int ff_inlink_evaluate_timeline_at_frame(AVFilterLink *link, const AVFrame *frame)
{
    AVFilterContext *dstctx = link->dst;
    int64_t pts = frame->pts;
    int64_t pos = frame->pkt_pos;

    if (!dstctx->enable_str)
        return 1;

    dstctx->var_values[VAR_N] = link->frame_count_out;
    dstctx->var_values[VAR_T] = pts == AV_NOPTS_VALUE ? NAN : pts * av_q2d(link->time_base);
    dstctx->var_values[VAR_W] = link->w;
    dstctx->var_values[VAR_H] = link->h;
    dstctx->var_values[VAR_POS] = pos == -1 ? NAN : pos;

    return fabs(av_expr_eval(dstctx->enable, dstctx->var_values, ((void*)0))) >= 0.5;
}
