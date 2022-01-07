
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* dst; } ;
struct TYPE_7__ {int depth; } ;
typedef TYPE_1__ SignalstatsContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int filter_frame16 (TYPE_2__*,int *) ;
 int filter_frame8 (TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    SignalstatsContext *s = ctx->priv;

    if (s->depth > 8)
        return filter_frame16(link, in);
    else
        return filter_frame8(link, in);
}
