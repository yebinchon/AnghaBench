
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_4__ {int vtimers; } ;



void
task_copy_fields_for_exec(task_t dst_task, task_t src_task)
{
 dst_task->vtimers = src_task->vtimers;
}
