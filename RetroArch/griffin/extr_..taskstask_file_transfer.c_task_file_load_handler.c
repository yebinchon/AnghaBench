
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct nbio_t {int dummy; } ;
struct TYPE_12__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_13__ {int status; int type; int is_finished; struct nbio_t* handle; int path; } ;
typedef TYPE_2__ nbio_handle_t ;


 int NBIO_READ ;
 int nbio_begin_read (struct nbio_t*) ;
 scalar_t__ nbio_open (int ,int ) ;
 int strdup (char*) ;
 int string_is_empty (int ) ;
 int task_audio_mixer_load_handler (TYPE_1__*) ;
 int task_file_transfer_iterate_parse (TYPE_2__*) ;
 int task_file_transfer_iterate_transfer (TYPE_2__*) ;
 scalar_t__ task_get_cancelled (TYPE_1__*) ;
 int task_image_load_handler (TYPE_1__*) ;
 int task_set_cancelled (TYPE_1__*,int) ;
 int task_set_error (TYPE_1__*,int ) ;
 int task_set_finished (TYPE_1__*,int) ;

void task_file_load_handler(retro_task_t *task)
{
   nbio_handle_t *nbio = (nbio_handle_t*)task->state;

   if (nbio)
   {
      switch (nbio->status)
      {
         case 141:
            if (nbio && !string_is_empty(nbio->path))
            {
               struct nbio_t *handle = (struct nbio_t*)nbio_open(nbio->path, NBIO_READ);

               if (handle)
               {
                  nbio->handle = handle;
                  nbio->status = 140;

                  nbio_begin_read(handle);
                  return;
               }
               else
                  task_set_cancelled(task, 1);
            }
            break;
         case 138:
            if (!nbio || task_file_transfer_iterate_parse(nbio) == -1)
               task_set_cancelled(task, 1);
            nbio->status = 139;
            break;
         case 140:
            if (!nbio || task_file_transfer_iterate_transfer(nbio) == -1)
               nbio->status = 138;
            break;
         case 139:
            break;
      }

      switch (nbio->type)
      {
         case 130:
         case 135:
         case 129:
         case 137:
            if (!task_image_load_handler(task))
               task_set_finished(task, 1);
            break;
         case 133:
         case 136:
         case 131:
         case 134:
         case 128:




            break;
         case 132:
         default:
            if (nbio->is_finished)
               task_set_finished(task, 1);
            break;
      }
   }

   if (task_get_cancelled(task))
   {
      task_set_error(task, strdup("Task canceled."));
      task_set_finished(task, 1);
   }
}
