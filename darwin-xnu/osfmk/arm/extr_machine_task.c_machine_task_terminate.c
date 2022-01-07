
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int * task_debug; } ;


 int ads_zone ;
 int zfree (int ,void*) ;

void
machine_task_terminate(task_t task)
{
 if (task) {
  void *task_debug;

  task_debug = task->task_debug;
  if (task_debug != ((void*)0)) {
   task->task_debug = ((void*)0);
   zfree(ads_zone, task_debug);
  }
 }
}
