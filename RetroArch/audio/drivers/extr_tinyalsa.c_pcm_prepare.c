
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {int prepared; int fd; } ;


 int RARCH_ERR (char*) ;
 int SNDRV_PCM_IOCTL_PREPARE ;
 scalar_t__ ioctl (int ,int ) ;

__attribute__((used)) static int pcm_prepare(struct pcm *pcm)
{
   if (pcm->prepared)
      return 0;

   if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_PREPARE) < 0)
   {
      RARCH_ERR("[TINYALSA]: Cannot prepare channel.\n");
      return -1;
   }

   pcm->prepared = 1;
   return 0;
}
