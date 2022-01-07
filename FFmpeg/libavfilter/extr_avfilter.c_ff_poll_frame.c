
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* src; TYPE_1__* srcpad; } ;
struct TYPE_7__ {int nb_inputs; TYPE_3__** inputs; } ;
struct TYPE_6__ {int (* poll_frame ) (TYPE_3__*) ;} ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFMIN (int,int) ;
 int INT_MAX ;
 int stub1 (TYPE_3__*) ;

int ff_poll_frame(AVFilterLink *link)
{
    int i, min = INT_MAX;

    if (link->srcpad->poll_frame)
        return link->srcpad->poll_frame(link);

    for (i = 0; i < link->src->nb_inputs; i++) {
        int val;
        if (!link->src->inputs[i])
            return AVERROR(EINVAL);
        val = ff_poll_frame(link->src->inputs[i]);
        min = FFMIN(min, val);
    }

    return min;
}
