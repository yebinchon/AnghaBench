
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int snd_pcm_sframes_t ;
struct TYPE_2__ {int thread_dead; int cond_lock; int cond; int pcm; int period_frames; scalar_t__ period_size; int fifo_lock; int buffer; } ;
typedef TYPE_1__ alsa_thread_t ;


 int EINTR ;
 int EPIPE ;
 int ESTRPIPE ;
 size_t MIN (scalar_t__,size_t) ;
 int RARCH_ERR (char*,...) ;
 scalar_t__ calloc (int,scalar_t__) ;
 int fifo_read (int ,int *,size_t) ;
 size_t fifo_read_avail (int ) ;
 int free (int *) ;
 int memset (int *,int ,scalar_t__) ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 scalar_t__ snd_pcm_recover (int ,int ,int) ;
 int snd_pcm_writei (int ,int *,int ) ;
 int snd_strerror (int ) ;

__attribute__((used)) static void alsa_worker_thread(void *data)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;
   uint8_t *buf = (uint8_t *)calloc(1, alsa->period_size);

   if (!buf)
   {
      RARCH_ERR("failed to allocate audio buffer");
      goto end;
   }

   while (!alsa->thread_dead)
   {
      size_t avail;
      size_t fifo_size;
      snd_pcm_sframes_t frames;
      slock_lock(alsa->fifo_lock);
      avail = fifo_read_avail(alsa->buffer);
      fifo_size = MIN(alsa->period_size, avail);
      fifo_read(alsa->buffer, buf, fifo_size);
      scond_signal(alsa->cond);
      slock_unlock(alsa->fifo_lock);


      memset(buf + fifo_size, 0, alsa->period_size - fifo_size);

      frames = snd_pcm_writei(alsa->pcm, buf, alsa->period_frames);

      if (frames == -EPIPE || frames == -EINTR ||
            frames == -ESTRPIPE)
      {
         if (snd_pcm_recover(alsa->pcm, frames, 1) < 0)
         {
            RARCH_ERR("[ALSA]: (#2) Failed to recover from error (%s)\n",
                  snd_strerror(frames));
            break;
         }

         continue;
      }
      else if (frames < 0)
      {
         RARCH_ERR("[ALSA]: Unknown error occurred (%s).\n",
               snd_strerror(frames));
         break;
      }
   }

end:
   slock_lock(alsa->cond_lock);
   alsa->thread_dead = 1;
   scond_signal(alsa->cond);
   slock_unlock(alsa->cond_lock);
   free(buf);
}
