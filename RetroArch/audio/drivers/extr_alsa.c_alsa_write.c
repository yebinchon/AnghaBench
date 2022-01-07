
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
typedef int snd_pcm_sframes_t ;
typedef int int16_t ;
struct TYPE_3__ {int pcm; scalar_t__ nonblock; scalar_t__ is_paused; scalar_t__ has_float; int frame_bits; } ;
typedef TYPE_1__ alsa_t ;


 int BYTES_TO_FRAMES (size_t,int ) ;
 int EAGAIN ;
 int EINTR ;
 int EPIPE ;
 int ESTRPIPE ;
 int alsa_start (TYPE_1__*,int) ;
 scalar_t__ snd_pcm_recover (int ,int,int) ;
 int snd_pcm_wait (int ,int) ;
 int snd_pcm_writei (int ,int const*,int) ;

__attribute__((used)) static ssize_t alsa_write(void *data, const void *buf_, size_t size_)
{
   alsa_t *alsa = (alsa_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   snd_pcm_sframes_t written = 0;
   snd_pcm_sframes_t size = BYTES_TO_FRAMES(size_, alsa->frame_bits);
   size_t frames_size = alsa->has_float ? sizeof(float) : sizeof(int16_t);



   if (alsa->is_paused)
      if (!alsa_start(alsa, 0))
         return -1;

   if (alsa->nonblock)
   {
      while (size)
      {
         snd_pcm_sframes_t frames = snd_pcm_writei(alsa->pcm, buf, size);

         if (frames == -EPIPE || frames == -EINTR || frames == -ESTRPIPE)
         {
            if (snd_pcm_recover(alsa->pcm, frames, 1) < 0)
               return -1;

            break;
         }
         else if (frames == -EAGAIN)
            break;
         else if (frames < 0)
            return -1;

         written += frames;
         buf += (frames << 1) * frames_size;
         size -= frames;
      }
   }
   else
   {
      bool eagain_retry = 1;

      while (size)
      {
         snd_pcm_sframes_t frames;
         int rc = snd_pcm_wait(alsa->pcm, -1);

         if (rc == -EPIPE || rc == -ESTRPIPE || rc == -EINTR)
         {
            if (snd_pcm_recover(alsa->pcm, rc, 1) < 0)
               return -1;
            continue;
         }

         frames = snd_pcm_writei(alsa->pcm, buf, size);

         if (frames == -EPIPE || frames == -EINTR || frames == -ESTRPIPE)
         {
            if (snd_pcm_recover(alsa->pcm, frames, 1) < 0)
               return -1;

            break;
         }
         else if (frames == -EAGAIN)
         {

            if (eagain_retry)
            {
               eagain_retry = 0;
               continue;
            }
            break;
         }
         else if (frames < 0)
            return -1;

         written += frames;
         buf += (frames << 1) * frames_size;
         size -= frames;
      }
   }

   return written;
}
