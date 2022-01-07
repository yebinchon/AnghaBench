
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pollfd {int events; int revents; int fd; } ;
struct pcm {TYPE_1__* mmap_status; TYPE_2__* sync_ptr; int fd; } ;
struct TYPE_4__ {scalar_t__ flags; } ;
struct TYPE_3__ {int state; } ;


 int EINTR ;
 int EIO ;
 int ENODEV ;
 int EPIPE ;
 int ESTRPIPE ;



 int POLLERR ;
 int POLLIN ;
 int POLLNVAL ;
 int POLLOUT ;
 int SNDRV_PCM_IOCTL_SYNC_PTR ;
 int errno ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int poll (struct pollfd*,int,int) ;

__attribute__((used)) static int pcm_wait(struct pcm *pcm, int timeout)
{
   struct pollfd pfd;

   pfd.fd = pcm->fd;
   pfd.events = POLLIN | POLLOUT | POLLERR | POLLNVAL;

   do
   {

      int err = poll(&pfd, 1, timeout);
      if (err < 0)
         return -errno;


      if (err == 0)
         return 0;


      if (errno == -EINTR)
         continue;


      if (pfd.revents & (POLLERR | POLLNVAL))
      {
         int cond = -1;

         if (pcm->sync_ptr)
         {
            pcm->sync_ptr->flags = 0;
            if (ioctl(pcm->fd, SNDRV_PCM_IOCTL_SYNC_PTR, pcm->sync_ptr) >= 0)
               cond = pcm->mmap_status->state;
         }

         switch (cond)
         {
            case 128:
               return -EPIPE;
            case 129:
               return -ESTRPIPE;
            case 130:
               return -ENODEV;
            default:
               break;
         }

         return -EIO;
      }

   } while (!(pfd.revents & (POLLIN | POLLOUT)));

   return 1;
}
