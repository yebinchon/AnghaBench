
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ out_ref; scalar_t__ current; } ;
typedef TYPE_1__ TileContext ;
struct TYPE_9__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* src; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR_EOF ;
 int end_last_frame (TYPE_3__*) ;
 int ff_request_frame (TYPE_2__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    TileContext *tile = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int r;

    r = ff_request_frame(inlink);
    if (r == AVERROR_EOF && tile->current && tile->out_ref)
        r = end_last_frame(ctx);
    return r;
}
