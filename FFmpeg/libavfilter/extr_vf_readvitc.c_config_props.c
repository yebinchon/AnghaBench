
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int w; int h; TYPE_3__* dst; } ;
struct TYPE_6__ {int grp_width; int scan_max; } ;
typedef TYPE_1__ ReadVitcContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_DEBUG ;
 int av_log (TYPE_3__*,int ,char*,int,int ,int,int ) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ReadVitcContext *s = ctx->priv;

    s->grp_width = inlink->w * 5 / 48;
    av_log(ctx, AV_LOG_DEBUG, "w:%d h:%d grp_width:%d scan_max:%d\n",
            inlink->w, inlink->h, s->grp_width, s->scan_max);
    return 0;
}
