
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_viewport {int dummy; } ;
struct TYPE_2__ {int lock; struct video_viewport vp; int read_vp; } ;
typedef TYPE_1__ thread_video_t ;


 int memcpy (int *,struct video_viewport*,int) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void video_thread_viewport_info(void *data, struct video_viewport *vp)
{
   thread_video_t *thr = (thread_video_t*)data;

   if (!thr)
      return;

   slock_lock(thr->lock);
   *vp = thr->vp;


   memcpy(&thr->read_vp, &thr->vp, sizeof(thr->vp));
   slock_unlock(thr->lock);
}
