
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_windowed; int lock; } ;
typedef TYPE_1__ thread_video_t ;


 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static bool video_thread_has_windowed(void *data)
{
   bool ret;
   thread_video_t *thr = (thread_video_t*)data;

   slock_lock(thr->lock);
   ret = thr->has_windowed;
   slock_unlock(thr->lock);

   return ret;
}
