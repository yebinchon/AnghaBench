
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_1__* prev; } ;
struct TYPE_8__ {TYPE_2__* next; } ;
typedef TYPE_3__ Job ;


 scalar_t__ job_list_is_empty (TYPE_3__*) ;
 int job_list_reset (TYPE_3__*) ;

Job *
job_list_remove(Job *j)
{
    if (!j) return ((void*)0);
    if (job_list_is_empty(j)) return ((void*)0);

    j->next->prev = j->prev;
    j->prev->next = j->next;

    job_list_reset(j);

    return j;
}
