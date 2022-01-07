
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ user_ldt_t ;
typedef TYPE_1__* task_t ;
struct TYPE_5__ {int (* task_destroy ) (int *) ;} ;
struct TYPE_4__ {scalar_t__ i386_ldt; int * task_debug; int * hv_task_target; } ;


 TYPE_3__ hv_callbacks ;
 int ids_zone ;
 int stub1 (int *) ;
 int user_ldt_free (scalar_t__) ;
 int zfree (int ,void*) ;

void
machine_task_terminate(task_t task)
{
 if (task) {
  user_ldt_t user_ldt;
  void *task_debug;
  user_ldt = task->i386_ldt;
  if (user_ldt != 0) {
   task->i386_ldt = 0;
   user_ldt_free(user_ldt);
  }

  task_debug = task->task_debug;
  if (task_debug != ((void*)0)) {
   task->task_debug = ((void*)0);
   zfree(ids_zone, task_debug);
  }
 }
}
