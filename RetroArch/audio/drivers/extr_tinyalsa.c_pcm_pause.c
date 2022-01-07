
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm {int fd; } ;


 int SNDRV_PCM_IOCTL_PAUSE ;
 scalar_t__ ioctl (int ,int ,int) ;

__attribute__((used)) static int pcm_pause(struct pcm *pcm, int enable)
{
   if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_PAUSE, enable) < 0)
      return -1;

   return 0;
}
