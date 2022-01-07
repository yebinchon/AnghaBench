
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int retro_task_t ;
struct TYPE_6__ {TYPE_2__* source_file; } ;
typedef TYPE_1__ decompress_task_data_t ;
struct TYPE_7__ {struct TYPE_7__* target_dir; struct TYPE_7__* userdata; struct TYPE_7__* valid_ext; struct TYPE_7__* subdir; struct TYPE_7__* source_file; } ;
typedef TYPE_2__ decompress_state_t ;


 scalar_t__ calloc (int,int) ;
 int free (TYPE_2__*) ;
 int strdup (char*) ;
 scalar_t__ task_get_cancelled (int *) ;
 scalar_t__ task_get_error (int *) ;
 int task_set_data (int *,TYPE_1__*) ;
 int task_set_error (int *,int ) ;
 int task_set_finished (int *,int) ;

__attribute__((used)) static void task_decompress_handler_finished(retro_task_t *task,
      decompress_state_t *dec)
{
   task_set_finished(task, 1);

   if (!task_get_error(task) && task_get_cancelled(task))
      task_set_error(task, strdup("Task canceled"));

   if (task_get_error(task))
      free(dec->source_file);
   else
   {
      decompress_task_data_t *data =
         (decompress_task_data_t*)calloc(1, sizeof(*data));

      data->source_file = dec->source_file;
      task_set_data(task, data);
   }

   if (dec->subdir)
      free(dec->subdir);
   if (dec->valid_ext)
      free(dec->valid_ext);
   if (dec->userdata)
      free(dec->userdata);
   free(dec->target_dir);
   free(dec);
}
