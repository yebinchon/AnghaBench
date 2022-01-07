
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* front; } ;
typedef TYPE_1__ task_queue_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ retro_task_t ;



__attribute__((used)) static retro_task_t *task_queue_get(task_queue_t *queue)
{
   retro_task_t *task = queue->front;

   if (task)
   {
      queue->front = task->next;
      task->next = ((void*)0);
   }

   return task;
}
