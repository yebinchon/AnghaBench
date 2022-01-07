
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int retro_task_t ;
struct TYPE_2__ {size_t undo_size; int autosave; void* undo_data; int path; } ;
typedef TYPE_1__ load_task_data_t ;


 int content_load_state_cb (int *,void*,void*,char const*) ;
 int free (char*) ;
 char* strdup (int ) ;
 int task_push_save_state (char*,void*,size_t,int) ;

__attribute__((used)) static void content_load_and_save_state_cb(retro_task_t *task,
      void *task_data,
      void *user_data, const char *error)
{
   load_task_data_t *load_data = (load_task_data_t*)task_data;
   char *path = strdup(load_data->path);
   void *data = load_data->undo_data;
   size_t size = load_data->undo_size;
   bool autosave = load_data->autosave;

   content_load_state_cb(task, task_data, user_data, error);

   task_push_save_state(path, data, size, autosave);

   free(path);
}
