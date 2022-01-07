
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct record_audio_data {int frames; int data; } ;
typedef int int16_t ;
struct TYPE_5__ {int channels; } ;
struct TYPE_4__ {int audio_enable; } ;
struct TYPE_6__ {int can_sleep; int cond; int lock; TYPE_2__ params; int audio_fifo; int cond_lock; int alive; TYPE_1__ config; } ;
typedef TYPE_3__ ffmpeg_t ;


 int fifo_write (int ,int ,int) ;
 unsigned int fifo_write_avail (int ) ;
 int scond_signal (int ) ;
 int scond_wait (int ,int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static bool ffmpeg_push_audio(void *data,
      const struct record_audio_data *audio_data)
{
   ffmpeg_t *handle = (ffmpeg_t*)data;

   if (!handle || !audio_data)
      return 0;

   if (!handle->config.audio_enable)
      return 1;

   for (;;)
   {
      unsigned avail;
      slock_lock(handle->lock);
      avail = fifo_write_avail(handle->audio_fifo);
      slock_unlock(handle->lock);

      if (!handle->alive)
         return 0;

      if (avail >= audio_data->frames * handle->params.channels
            * sizeof(int16_t))
         break;

      slock_lock(handle->cond_lock);
      if (handle->can_sleep)
      {
         handle->can_sleep = 0;
         scond_wait(handle->cond, handle->cond_lock);
         handle->can_sleep = 1;
      }
      else
         scond_signal(handle->cond);

      slock_unlock(handle->cond_lock);
   }

   slock_lock(handle->lock);
   fifo_write(handle->audio_fifo, audio_data->data,
         audio_data->frames * handle->params.channels * sizeof(int16_t));
   slock_unlock(handle->lock);
   scond_signal(handle->cond);

   return 1;
}
