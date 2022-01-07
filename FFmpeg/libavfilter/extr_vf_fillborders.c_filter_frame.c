
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dst; } ;
struct TYPE_7__ {int (* fillborders ) (TYPE_2__*,int *) ;} ;
struct TYPE_6__ {int * outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ FillBordersContext ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int ff_filter_frame (int ,int *) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    FillBordersContext *s = inlink->dst->priv;

    s->fillborders(s, frame);

    return ff_filter_frame(inlink->dst->outputs[0], frame);
}
