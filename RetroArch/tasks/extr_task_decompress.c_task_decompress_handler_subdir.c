
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_11__ {int archive; int callback_error; TYPE_9__* userdata; int valid_ext; int source_file; } ;
typedef TYPE_2__ decompress_state_t ;
struct TYPE_12__ {int archive_path; TYPE_2__* dec; } ;


 int file_archive_parse_file_iterate (int *,int*,int ,int ,int ,TYPE_9__*) ;
 int file_archive_parse_file_iterate_stop (int *) ;
 int file_archive_parse_file_progress (int *) ;
 int file_decompressed_subdir ;
 int strlcpy (int ,int ,int) ;
 int task_decompress_handler_finished (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ task_get_cancelled (TYPE_1__*) ;
 int task_set_error (TYPE_1__*,int ) ;
 int task_set_progress (TYPE_1__*,int ) ;

__attribute__((used)) static void task_decompress_handler_subdir(retro_task_t *task)
{
   int ret;
   bool retdec;
   decompress_state_t *dec = (decompress_state_t*)task->state;

   dec->userdata->dec = dec;
   strlcpy(dec->userdata->archive_path,
         dec->source_file,
         sizeof(dec->userdata->archive_path));

   ret = file_archive_parse_file_iterate(
         &dec->archive,
         &retdec, dec->source_file,
         dec->valid_ext, file_decompressed_subdir, dec->userdata);

   task_set_progress(task,
         file_archive_parse_file_progress(&dec->archive));

   if (task_get_cancelled(task) || ret != 0)
   {
      task_set_error(task, dec->callback_error);
      file_archive_parse_file_iterate_stop(&dec->archive);

      task_decompress_handler_finished(task, dec);
   }
}
