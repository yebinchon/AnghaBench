
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; TYPE_2__** outputs; } ;
struct TYPE_9__ {TYPE_3__* dst; } ;
struct TYPE_8__ {int start; int end; scalar_t__ nb_found; } ;
typedef TYPE_1__ ReadEIA608Context ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int extract_line (TYPE_3__*,TYPE_2__*,int *,int) ;
 int ff_filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ReadEIA608Context *s = ctx->priv;
    int i;

    s->nb_found = 0;
    for (i = s->start; i <= s->end; i++)
        extract_line(ctx, inlink, in, i);

    return ff_filter_frame(outlink, in);
}
