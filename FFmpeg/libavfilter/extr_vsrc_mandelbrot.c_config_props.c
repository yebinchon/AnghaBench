
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* priv; } ;
struct TYPE_7__ {int time_base; int h; int w; TYPE_3__* src; } ;
struct TYPE_6__ {int frame_rate; int h; int w; } ;
typedef TYPE_1__ MBContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 scalar_t__ av_image_check_size (int ,int ,int ,TYPE_3__*) ;
 int av_inv_q (int ) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->src;
    MBContext *s = ctx->priv;

    if (av_image_check_size(s->w, s->h, 0, ctx) < 0)
        return AVERROR(EINVAL);

    inlink->w = s->w;
    inlink->h = s->h;
    inlink->time_base = av_inv_q(s->frame_rate);

    return 0;
}
