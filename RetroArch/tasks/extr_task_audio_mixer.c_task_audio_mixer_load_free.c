
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct audio_mixer_handle {int (* cb ) (TYPE_1__*,int *,int *,int *) ;TYPE_2__* buffer; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_8__ {int handle; struct TYPE_8__* data; struct TYPE_8__* path; } ;
typedef TYPE_2__ nbio_handle_t ;


 int free (TYPE_2__*) ;
 int nbio_free (int ) ;
 int string_is_empty (TYPE_2__*) ;
 int stub1 (TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static void task_audio_mixer_load_free(retro_task_t *task)
{
   nbio_handle_t *nbio = (nbio_handle_t*)task->state;
   struct audio_mixer_handle *mixer = (struct audio_mixer_handle*)nbio->data;

   if (mixer)
   {
      if (mixer->buffer)
      {
         if (mixer->buffer->path)
            free(mixer->buffer->path);
         free(mixer->buffer);
      }

      if (mixer->cb)
         mixer->cb(task, ((void*)0), ((void*)0), ((void*)0));
   }

   if (!string_is_empty(nbio->path))
      free(nbio->path);
   if (nbio->data)
      free(nbio->data);
   nbio_free(nbio->handle);
   free(nbio);
}
