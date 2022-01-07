
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int enable; int full_screen; } ;
struct TYPE_6__ {TYPE_2__ frame; TYPE_1__ texture; } ;
typedef TYPE_3__ thread_video_t ;


 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void thread_set_texture_enable(void *data, bool state, bool full_screen)
{
   thread_video_t *thr = (thread_video_t*)data;
   if (!thr)
      return;

   slock_lock(thr->frame.lock);
   thr->texture.enable = state;
   thr->texture.full_screen = full_screen;
   slock_unlock(thr->frame.lock);
}
