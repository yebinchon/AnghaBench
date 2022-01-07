
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int retro_task_t ;
struct TYPE_3__ {int state; int percent; } ;
typedef TYPE_1__ powerstate_t ;


 int free (TYPE_1__*) ;
 int powerstate_percent ;
 int powerstate_status ;

__attribute__((used)) static void task_powerstate_cb(retro_task_t *task,
      void *task_data,
      void *user_data, const char *error)
{
   powerstate_t *powerstate = (powerstate_t*)task_data;

   powerstate_percent = powerstate->percent;
   powerstate_status = powerstate->state;

   free(powerstate);
}
