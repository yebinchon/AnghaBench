
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int den; int num; } ;
struct TYPE_5__ {int den; int num; } ;
struct TYPE_7__ {TYPE_2__ frame_rate; TYPE_1__ time_base; } ;
typedef TYPE_3__ AVFilterLink ;
typedef int AVFilterContext ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int config_props(AVFilterContext *ctx, AVFilterLink *link, int is_out)
{

    av_log(ctx, AV_LOG_INFO, "config %s time_base: %d/%d, frame_rate: %d/%d\n",
           is_out ? "out" : "in",
           link->time_base.num, link->time_base.den,
           link->frame_rate.num, link->frame_rate.den);

    return 0;
}
