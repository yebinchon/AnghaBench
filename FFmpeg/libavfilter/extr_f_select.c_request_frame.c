
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* src; } ;
struct TYPE_5__ {TYPE_2__** inputs; } ;
typedef TYPE_2__ AVFilterLink ;


 int ff_request_frame (TYPE_2__*) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterLink *inlink = outlink->src->inputs[0];
    int ret = ff_request_frame(inlink);
    return ret;
}
