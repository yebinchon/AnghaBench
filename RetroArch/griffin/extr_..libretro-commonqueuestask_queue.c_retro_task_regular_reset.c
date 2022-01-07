
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cancelled; struct TYPE_3__* next; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_4__ {TYPE_1__* front; } ;


 TYPE_2__ tasks_running ;

__attribute__((used)) static void retro_task_regular_reset(void)
{
   retro_task_t *task = tasks_running.front;

   for (; task; task = task->next)
      task->cancelled = 1;
}
