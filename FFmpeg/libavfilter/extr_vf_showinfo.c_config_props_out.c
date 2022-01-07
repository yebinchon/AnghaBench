
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int config_props (int *,TYPE_1__*,int) ;

__attribute__((used)) static int config_props_out(AVFilterLink *link)
{
    AVFilterContext *ctx = link->src;
    return config_props(ctx, link, 1);
}
