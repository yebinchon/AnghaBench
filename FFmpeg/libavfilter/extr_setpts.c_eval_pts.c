
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {scalar_t__ type; int time_base; } ;
struct TYPE_8__ {int pkt_pos; int interlaced_frame; int nb_samples; } ;
struct TYPE_7__ {int* var_values; int expr; } ;
typedef TYPE_1__ SetPTSContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int NAN ;
 void* TS2D (int ) ;
 void* TS2T (int ,int ) ;
 size_t VAR_INTERLACED ;
 size_t VAR_NB_SAMPLES ;
 size_t VAR_POS ;
 size_t VAR_PTS ;
 size_t VAR_RTCTIME ;
 size_t VAR_S ;
 size_t VAR_STARTPTS ;
 size_t VAR_STARTT ;
 size_t VAR_T ;
 double av_expr_eval (int ,int*,int *) ;
 int av_gettime () ;
 scalar_t__ isnan (int) ;

__attribute__((used)) static double eval_pts(SetPTSContext *setpts, AVFilterLink *inlink, AVFrame *frame, int64_t pts)
{
    if (isnan(setpts->var_values[VAR_STARTPTS])) {
        setpts->var_values[VAR_STARTPTS] = TS2D(pts);
        setpts->var_values[VAR_STARTT ] = TS2T(pts, inlink->time_base);
    }
    setpts->var_values[VAR_PTS ] = TS2D(pts);
    setpts->var_values[VAR_T ] = TS2T(pts, inlink->time_base);
    setpts->var_values[VAR_POS ] = !frame || frame->pkt_pos == -1 ? NAN : frame->pkt_pos;
    setpts->var_values[VAR_RTCTIME ] = av_gettime();

    if (frame) {
        if (inlink->type == AVMEDIA_TYPE_VIDEO) {
            setpts->var_values[VAR_INTERLACED] = frame->interlaced_frame;
        } else if (inlink->type == AVMEDIA_TYPE_AUDIO) {
            setpts->var_values[VAR_S] = frame->nb_samples;
            setpts->var_values[VAR_NB_SAMPLES] = frame->nb_samples;
        }
    }

    return av_expr_eval(setpts->expr, setpts->var_values, ((void*)0));
}
