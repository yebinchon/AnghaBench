
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * video_fifo; int * attr_fifo; int * audio_fifo; } ;
typedef TYPE_1__ ffmpeg_t ;


 int fifo_free (int *) ;

__attribute__((used)) static void deinit_thread_buf(ffmpeg_t *handle)
{
   if (handle->audio_fifo)
   {
      fifo_free(handle->audio_fifo);
      handle->audio_fifo = ((void*)0);
   }

   if (handle->attr_fifo)
   {
      fifo_free(handle->attr_fifo);
      handle->attr_fifo = ((void*)0);
   }

   if (handle->video_fifo)
   {
      fifo_free(handle->video_fifo);
      handle->video_fifo = ((void*)0);
   }
}
