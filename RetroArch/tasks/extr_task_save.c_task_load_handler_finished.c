
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* file; } ;
typedef TYPE_1__ save_task_state_t ;
typedef int retro_task_t ;
typedef int load_task_data_t ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int intfstream_close (TYPE_1__*) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int strdup (char*) ;
 scalar_t__ task_get_cancelled (int *) ;
 int task_get_error (int *) ;
 int task_set_data (int *,int *) ;
 int task_set_error (int *,int ) ;
 int task_set_finished (int *,int) ;

__attribute__((used)) static void task_load_handler_finished(retro_task_t *task,
      save_task_state_t *state)
{
   load_task_data_t *task_data = ((void*)0);

   task_set_finished(task, 1);

   if (state->file)
   {
      intfstream_close(state->file);
      free(state->file);
   }

   if (!task_get_error(task) && task_get_cancelled(task))
      task_set_error(task, strdup("Task canceled"));

   task_data = (load_task_data_t*)calloc(1, sizeof(*task_data));

   if (!task_data)
      return;

   memcpy(task_data, state, sizeof(*task_data));

   task_set_data(task, task_data);

   free(state);
}
