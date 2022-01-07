
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* back; TYPE_2__* front; } ;
typedef TYPE_1__ task_queue_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ retro_task_t ;



__attribute__((used)) static void task_queue_put(task_queue_t *queue, retro_task_t *task)
{
   task->next = ((void*)0);

   if (queue->front)
      queue->back->next = task;
   else
      queue->front = task;

   queue->back = task;
}
