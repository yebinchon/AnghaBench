
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_in; } ;
typedef TYPE_1__ AVFilterLink ;



int ff_outlink_get_status(AVFilterLink *link)
{
    return link->status_in;
}
