
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dst; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int connect_ports (int *,TYPE_1__*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;

    return connect_ports(ctx, inlink);
}
