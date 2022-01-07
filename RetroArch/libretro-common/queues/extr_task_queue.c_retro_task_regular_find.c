
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ retro_task_t ;
typedef scalar_t__ (* retro_task_finder_t ) (TYPE_1__*,void*) ;
struct TYPE_6__ {TYPE_1__* front; } ;


 TYPE_3__ tasks_running ;

__attribute__((used)) static bool retro_task_regular_find(retro_task_finder_t func, void *user_data)
{
   retro_task_t *task = tasks_running.front;

   for (; task; task = task->next)
   {
      if (func(task, user_data))
         return 1;
   }

   return 0;
}
