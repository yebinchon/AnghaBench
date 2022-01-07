
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int buried_ct; } ;
struct TYPE_10__ {scalar_t__ state; } ;
struct TYPE_13__ {TYPE_3__* tube; TYPE_1__ r; } ;
struct TYPE_11__ {int buried_ct; } ;
struct TYPE_12__ {TYPE_2__ stat; } ;
typedef TYPE_4__ Job ;


 scalar_t__ Buried ;
 TYPE_9__ global_stat ;
 TYPE_4__* job_list_remove (TYPE_4__*) ;

__attribute__((used)) static Job *
remove_buried_job(Job *j)
{
    if (!j || j->r.state != Buried)
        return ((void*)0);
    j = job_list_remove(j);
    if (j) {
        global_stat.buried_ct--;
        j->tube->stat.buried_ct--;
    }
    return j;
}
