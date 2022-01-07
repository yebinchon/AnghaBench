
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* prev; TYPE_2__* next; } ;
typedef TYPE_3__ ccv_nnc_stream_task_t ;
struct TYPE_10__ {TYPE_1__* tail; TYPE_2__* head; } ;
typedef TYPE_4__ ccv_nnc_stream_scheduler_t ;
struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_2__* next; } ;



__attribute__((used)) static void _ccv_nnc_stream_scheduler_delete_task(ccv_nnc_stream_scheduler_t* const scheduler, ccv_nnc_stream_task_t* const task)
{
 if (task->prev)
  task->prev->next = task->next;
 else
  scheduler->head = task->next;
 if (task->next)
  task->next->prev = task->prev;
 else
  scheduler->tail = task->prev;
}
