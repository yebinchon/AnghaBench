
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
typedef TYPE_2__ Job ;


 scalar_t__ Buried ;
 scalar_t__ Delayed ;
 scalar_t__ Ready ;
 scalar_t__ Reserved ;

const char *
job_state(Job *j)
{
    if (j->r.state == Ready) return "ready";
    if (j->r.state == Reserved) return "reserved";
    if (j->r.state == Buried) return "buried";
    if (j->r.state == Delayed) return "delayed";
    return "invalid";
}
