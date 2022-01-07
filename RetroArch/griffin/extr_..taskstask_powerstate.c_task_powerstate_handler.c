
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_10__ {int percent; int state; } ;
typedef TYPE_2__ powerstate_t ;
struct TYPE_11__ {int (* get_powerstate ) (int*,int *) ;} ;
typedef TYPE_3__ frontend_ctx_driver_t ;


 TYPE_3__* frontend_get_ptr () ;
 int stub1 (int*,int *) ;
 int task_set_data (TYPE_1__*,TYPE_2__*) ;
 int task_set_finished (TYPE_1__*,int) ;

__attribute__((used)) static void task_powerstate_handler(retro_task_t *task)
{
   const frontend_ctx_driver_t *frontend = frontend_get_ptr();
   powerstate_t *powerstate = (powerstate_t*)task->state;

   if (frontend && frontend->get_powerstate)
   {
      int seconds = 0;
      powerstate->state = frontend->get_powerstate(
            &seconds, &powerstate->percent);
   }

   task_set_data(task, powerstate);
   task_set_finished(task, 1);
}
