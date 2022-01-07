
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int time_base; int h; int w; TYPE_1__* src; } ;
struct TYPE_6__ {int frame_rate; int h; int w; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_2__ CellAutoContext ;
typedef TYPE_3__ AVFilterLink ;


 int av_inv_q (int ) ;

__attribute__((used)) static int config_props(AVFilterLink *outlink)
{
    CellAutoContext *s = outlink->src->priv;

    outlink->w = s->w;
    outlink->h = s->h;
    outlink->time_base = av_inv_q(s->frame_rate);

    return 0;
}
