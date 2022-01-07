
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_7__ {int time_base; } ;
struct TYPE_6__ {scalar_t__ black_end; scalar_t__ black_start; scalar_t__ black_min_duration; } ;
typedef TYPE_1__ BlackDetectContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_INFO ;
 int av_log (TYPE_1__*,int ,char*,int ,int ,int ) ;
 int av_ts2timestr (scalar_t__,int *) ;

__attribute__((used)) static void check_black_end(AVFilterContext *ctx)
{
    BlackDetectContext *blackdetect = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];

    if ((blackdetect->black_end - blackdetect->black_start) >= blackdetect->black_min_duration) {
        av_log(blackdetect, AV_LOG_INFO,
               "black_start:%s black_end:%s black_duration:%s\n",
               av_ts2timestr(blackdetect->black_start, &inlink->time_base),
               av_ts2timestr(blackdetect->black_end, &inlink->time_base),
               av_ts2timestr(blackdetect->black_end - blackdetect->black_start, &inlink->time_base));
    }
}
