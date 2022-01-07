
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {int apply_state_changes; TYPE_1__ frame; } ;
typedef TYPE_2__ thread_video_t ;


 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static void thread_apply_state_changes(void *data)
{
   thread_video_t *thr = (thread_video_t*)data;

   if (!thr)
      return;

   slock_lock(thr->frame.lock);
   thr->apply_state_changes = 1;
   slock_unlock(thr->frame.lock);
}
