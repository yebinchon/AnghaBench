
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcm {TYPE_1__* sync_ptr; int fd; } ;
struct TYPE_2__ {int flags; } ;


 int SNDRV_PCM_IOCTL_SYNC_PTR ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int pcm_sync_ptr(struct pcm *pcm, int flags)
{
   if (pcm->sync_ptr)
   {
      pcm->sync_ptr->flags = flags;
      if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_SYNC_PTR, pcm->sync_ptr) >= 0)
         return 0;
   }
   return -1;
}
