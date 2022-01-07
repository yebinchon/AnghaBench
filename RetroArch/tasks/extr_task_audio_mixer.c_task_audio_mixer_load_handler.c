
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct audio_mixer_handle {int is_finished; int copy_data_over; TYPE_1__* buffer; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_2__ retro_task_t ;
struct TYPE_11__ {int path; scalar_t__ is_finished; scalar_t__ data; } ;
typedef TYPE_3__ nbio_handle_t ;
struct TYPE_12__ {int path; int bufsize; int buf; } ;
typedef TYPE_4__ nbio_buf_t ;
struct TYPE_9__ {int bufsize; int buf; } ;


 scalar_t__ calloc (int,int) ;
 int strdup (int ) ;
 int task_get_cancelled (TYPE_2__*) ;
 int task_set_data (TYPE_2__*,TYPE_4__*) ;

bool task_audio_mixer_load_handler(retro_task_t *task)
{
   nbio_handle_t *nbio = (nbio_handle_t*)task->state;
   struct audio_mixer_handle *mixer = (struct audio_mixer_handle*)nbio->data;

   if (
         nbio->is_finished
         && (mixer && !mixer->is_finished)
         && (mixer->copy_data_over)
         && (!task_get_cancelled(task)))
   {
      nbio_buf_t *img = (nbio_buf_t*)calloc(1, sizeof(*img));

      if (img)
      {
         img->buf = mixer->buffer->buf;
         img->bufsize = mixer->buffer->bufsize;
         img->path = strdup(nbio->path);
      }

      task_set_data(task, img);

      mixer->copy_data_over = 0;
      mixer->is_finished = 1;

      return 0;
   }

   return 1;
}
