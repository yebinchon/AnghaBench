
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_8__ {int (* push_running ) (TYPE_1__*) ;} ;
struct TYPE_7__ {TYPE_1__* front; } ;


 int SLOCK_LOCK (int ) ;
 int SLOCK_UNLOCK (int ) ;
 scalar_t__ TASK_TYPE_BLOCKING ;
 TYPE_5__* impl_current ;
 int queue_lock ;
 int stub1 (TYPE_1__*) ;
 TYPE_2__ tasks_running ;

bool task_queue_push(retro_task_t *task)
{

   if (task->type == TASK_TYPE_BLOCKING)
   {
      retro_task_t *running = ((void*)0);
      bool found = 0;

      SLOCK_LOCK(queue_lock);
      running = tasks_running.front;

      for (; running; running = running->next)
      {
         if (running->type == TASK_TYPE_BLOCKING)
         {
            found = 1;
            break;
         }
      }

      SLOCK_UNLOCK(queue_lock);


      if (found)
         return 0;
   }



   impl_current->push_running(task);

   return 1;
}
