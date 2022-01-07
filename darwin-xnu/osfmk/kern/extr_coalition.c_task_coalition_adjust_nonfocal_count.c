
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
typedef TYPE_2__* coalition_t ;
typedef int boolean_t ;
struct TYPE_6__ {int nonfocal_task_count; } ;
struct TYPE_5__ {TYPE_2__** coalition; } ;


 size_t COALITION_FOCAL_TASKS_ACCOUNTING ;
 TYPE_2__* COALITION_NULL ;
 int FALSE ;
 int TRUE ;
 int UINT32_MAX ;
 int assert (int) ;
 int hw_atomic_add (int *,int) ;

boolean_t task_coalition_adjust_nonfocal_count(task_t task, int count, uint32_t *new_count)
{
 coalition_t coal = task->coalition[COALITION_FOCAL_TASKS_ACCOUNTING];
 if (coal == COALITION_NULL)
     return FALSE;

 *new_count = hw_atomic_add(&coal->nonfocal_task_count, count);
 assert(*new_count != UINT32_MAX);
 return TRUE;
}
