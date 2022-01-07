
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int task_region_footprint; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* current_task () ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
task_self_region_footprint_set(
 boolean_t newval)
{
 task_t curtask;

 curtask = current_task();
 task_lock(curtask);
 if (newval) {
  curtask->task_region_footprint = TRUE;
 } else {
  curtask->task_region_footprint = FALSE;
 }
 task_unlock(curtask);
}
