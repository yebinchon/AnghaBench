
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
typedef TYPE_2__* coalition_t ;
struct TYPE_6__ {int focal_task_count; } ;
struct TYPE_5__ {TYPE_2__** coalition; } ;


 size_t COALITION_FOCAL_TASKS_ACCOUNTING ;
 TYPE_2__* COALITION_NULL ;

uint32_t task_coalition_focal_count(task_t task)
{
 coalition_t coal = task->coalition[COALITION_FOCAL_TASKS_ACCOUNTING];
 if (coal == COALITION_NULL)
     return 0;

 return coal->focal_task_count;
}
