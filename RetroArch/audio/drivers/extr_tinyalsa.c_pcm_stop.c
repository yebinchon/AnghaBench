
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {scalar_t__ running; scalar_t__ prepared; int fd; } ;


 int RARCH_ERR (char*) ;
 int SNDRV_PCM_IOCTL_DROP ;
 scalar_t__ ioctl (int ,int ) ;

__attribute__((used)) static int pcm_stop(struct pcm *pcm)
{
   if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_DROP) < 0)
   {
      RARCH_ERR("[TINYALSA]: Cannot stop channel.\n");
      return -1;
   }

   pcm->prepared = 0;
   pcm->running = 0;
   return 0;
}
