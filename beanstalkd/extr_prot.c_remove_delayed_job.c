
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_8__ {int heap_index; TYPE_2__* tube; TYPE_1__ r; } ;
struct TYPE_7__ {int delay; } ;
typedef TYPE_3__ Job ;


 scalar_t__ Delayed ;
 int heapremove (int *,int ) ;

__attribute__((used)) static Job *
remove_delayed_job(Job *j)
{
    if (!j || j->r.state != Delayed)
        return ((void*)0);
    heapremove(&j->tube->delay, j->heap_index);

    return j;
}
