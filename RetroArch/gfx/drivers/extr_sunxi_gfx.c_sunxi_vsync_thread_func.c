
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_video {int pageflip_pending; int pending_mutex; int vsync_condition; int * pages; int * nextPage; TYPE_1__* sunxi_disp; scalar_t__ keep_vsync; } ;
struct TYPE_2__ {int fd_fb; } ;


 int FBIO_WAITFORVSYNC ;
 int ioctl (int ,int ,int ) ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void sunxi_vsync_thread_func(void *data)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;

   while (_dispvars->keep_vsync)
   {

      ioctl(_dispvars->sunxi_disp->fd_fb, FBIO_WAITFORVSYNC, 0);



      if (_dispvars->nextPage == &_dispvars->pages[0])
         _dispvars->nextPage = &_dispvars->pages[1];
      else
         _dispvars->nextPage = &_dispvars->pages[0];



      slock_lock(_dispvars->pending_mutex);
      _dispvars->pageflip_pending = 0;
      scond_signal(_dispvars->vsync_condition);
      slock_unlock(_dispvars->pending_mutex);
   }
}
