
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* data; scalar_t__ undo_save; struct TYPE_9__* file; } ;
typedef TYPE_1__ save_task_state_t ;
typedef int retro_task_t ;
struct TYPE_10__ {TYPE_1__* data; } ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_1__*) ;
 int intfstream_close (TYPE_1__*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int strdup (char*) ;
 scalar_t__ task_get_cancelled (int *) ;
 int task_get_error (int *) ;
 int task_set_data (int *,TYPE_1__*) ;
 int task_set_error (int *,int ) ;
 int task_set_finished (int *,int) ;
 TYPE_2__ undo_save_buf ;

__attribute__((used)) static void task_save_handler_finished(retro_task_t *task,
      save_task_state_t *state)
{
   save_task_state_t *task_data = ((void*)0);

   task_set_finished(task, 1);

   intfstream_close(state->file);
   free(state->file);

   if (!task_get_error(task) && task_get_cancelled(task))
      task_set_error(task, strdup("Task canceled"));

   task_data = (save_task_state_t*)calloc(1, sizeof(*task_data));
   memcpy(task_data, state, sizeof(*state));

   task_set_data(task, task_data);

   if (state->data)
   {
      if (state->undo_save && state->data == undo_save_buf.data)
         undo_save_buf.data = ((void*)0);
      free(state->data);
      state->data = ((void*)0);
   }

   free(state);
}
