
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int save_task_state_t ;
typedef int retro_task_t ;
struct TYPE_2__ {char* path; int * data; scalar_t__ size; } ;


 int free (int *) ;
 TYPE_1__ undo_save_buf ;

__attribute__((used)) static void undo_save_state_cb(retro_task_t *task,
      void *task_data,
      void *user_data, const char *error)
{
   save_task_state_t *state = (save_task_state_t*)task_data;


   undo_save_buf.path[0] = '\0';
   undo_save_buf.size = 0;
   if (undo_save_buf.data)
   {
      free(undo_save_buf.data);
      undo_save_buf.data = ((void*)0);
   }

   free(state);
}
