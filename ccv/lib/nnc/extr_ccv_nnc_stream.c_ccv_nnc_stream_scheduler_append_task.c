
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ ccv_nnc_stream_task_t ;
struct TYPE_6__ {TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ ccv_nnc_stream_scheduler_t ;



void ccv_nnc_stream_scheduler_append_task(ccv_nnc_stream_scheduler_t* const scheduler, ccv_nnc_stream_task_t* const task)
{
 if (scheduler->tail)
 {
  scheduler->tail->next = task;
  task->prev = scheduler->tail;
 } else {
  scheduler->head = task;
  task->prev = 0;
 }
 scheduler->tail = task;
 task->next = 0;
}
