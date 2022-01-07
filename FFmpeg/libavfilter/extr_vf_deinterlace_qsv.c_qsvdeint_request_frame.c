
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * inputs; } ;
struct TYPE_4__ {TYPE_2__* src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int ff_request_frame (int ) ;

__attribute__((used)) static int qsvdeint_request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;

    return ff_request_frame(ctx->inputs[0]);
}
