
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ finished; int (* handler ) (TYPE_1__*) ;struct TYPE_7__* next; } ;
typedef TYPE_1__ retro_task_t ;


 int retro_task_internal_gather () ;
 int retro_task_regular_push_running (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;
 TYPE_1__* task_queue_get (int *) ;
 int task_queue_push_progress (TYPE_1__*) ;
 int task_queue_put (int *,TYPE_1__*) ;
 int tasks_finished ;
 int tasks_running ;

__attribute__((used)) static void retro_task_regular_gather(void)
{
   retro_task_t *task = ((void*)0);
   retro_task_t *queue = ((void*)0);
   retro_task_t *next = ((void*)0);

   while ((task = task_queue_get(&tasks_running)) != ((void*)0))
   {
      task->next = queue;
      queue = task;
   }

   for (task = queue; task; task = next)
   {
      next = task->next;
      task->handler(task);

      task_queue_push_progress(task);

      if (task->finished)
         task_queue_put(&tasks_finished, task);
      else
         retro_task_regular_push_running(task);
   }

   retro_task_internal_gather();
}
