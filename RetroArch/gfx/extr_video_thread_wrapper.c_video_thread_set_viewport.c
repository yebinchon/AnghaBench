
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; int driver_data; TYPE_1__* driver; } ;
typedef TYPE_2__ thread_video_t ;
struct TYPE_3__ {int (* set_viewport ) (int ,unsigned int,unsigned int,int,int) ;} ;


 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int stub1 (int ,unsigned int,unsigned int,int,int) ;

__attribute__((used)) static void video_thread_set_viewport(void *data, unsigned width,
      unsigned height, bool force_full, bool video_allow_rotate)
{
   thread_video_t *thr = (thread_video_t*)data;
   if (!thr)
      return;

   slock_lock(thr->lock);

    if (thr->driver && thr->driver->set_viewport)
        thr->driver->set_viewport(thr->driver_data, width, height,
                                  force_full, video_allow_rotate);

   slock_unlock(thr->lock);
}
