
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_xferi {unsigned int frames; int result; void* buf; } ;
struct pcm {int flags; int running; int underruns; scalar_t__ prepared; int fd; } ;


 int EINVAL ;
 int EPIPE ;
 unsigned int INT_MAX ;
 int PCM_IN ;
 int PCM_NORESTART ;
 int RARCH_ERR (char*) ;
 int SNDRV_PCM_IOCTL_WRITEI_FRAMES ;
 unsigned int TINYALSA_FRAMES_MAX ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct snd_xferi*) ;
 int pcm_prepare (struct pcm*) ;

__attribute__((used)) static int pcm_writei(struct pcm *pcm, const void *data, unsigned int frame_count)
{
   struct snd_xferi x;

   if (pcm->flags & PCM_IN)
      return -EINVAL;




   if (frame_count > INT_MAX)
      return -EINVAL;

   x.buf = (void*)data;
   x.frames = frame_count;
   x.result = 0;

restart:
   if (!pcm->running)
   {
      int prepare_error = pcm_prepare(pcm);
      if (prepare_error)
         return prepare_error;
      if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_WRITEI_FRAMES, &x))
      {
         RARCH_ERR("[TINYALSA]: Cannot write initial data.\n");
         return -1;
      }
      pcm->running = 1;
      return 0;
   }

   if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_WRITEI_FRAMES, &x))
   {
      pcm->prepared = 0;
      pcm->running = 0;
      if (errno == EPIPE)
      {



         pcm->underruns++;
         if (pcm->flags & PCM_NORESTART)
            return -EPIPE;
         goto restart;
      }




      return -1;
   }

   return x.result;
}
