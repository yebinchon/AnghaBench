
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ (* retro_task_condition_fn_t ) (void*) ;
struct TYPE_2__ {scalar_t__ front; } ;


 int retro_task_regular_gather () ;
 TYPE_1__ tasks_running ;

__attribute__((used)) static void retro_task_regular_wait(retro_task_condition_fn_t cond, void* data)
{
   while (tasks_running.front && (!cond || cond(data)))
      retro_task_regular_gather();
}
