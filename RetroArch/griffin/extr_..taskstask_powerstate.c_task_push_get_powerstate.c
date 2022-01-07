
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mute; int callback; int handler; int * state; int type; } ;
typedef TYPE_1__ retro_task_t ;
typedef int powerstate_t ;


 int TASK_TYPE_NONE ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* task_init () ;
 int task_powerstate_cb ;
 int task_powerstate_handler ;
 int task_queue_push (TYPE_1__*) ;

void task_push_get_powerstate(void)
{
   retro_task_t *task = task_init();
   powerstate_t *state = ((void*)0);

   if (!task)
      return;
   state = (powerstate_t*)calloc(1, sizeof(*state));
   if (!state)
   {
      free(task);
      return;
   }

   task->type = TASK_TYPE_NONE;
   task->state = state;
   task->handler = task_powerstate_handler;
   task->callback = task_powerstate_cb;
   task->mute = 1;

   task_queue_push(task);
}
