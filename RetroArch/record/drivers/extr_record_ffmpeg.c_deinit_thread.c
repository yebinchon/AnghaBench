
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alive; int can_sleep; int * thread; int cond; int cond_lock; int lock; } ;
typedef TYPE_1__ ffmpeg_t ;


 int scond_free (int ) ;
 int scond_signal (int ) ;
 int slock_free (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int sthread_join (int *) ;

__attribute__((used)) static void deinit_thread(ffmpeg_t *handle)
{
   if (!handle->thread)
      return;

   slock_lock(handle->cond_lock);
   handle->alive = 0;
   handle->can_sleep = 0;
   slock_unlock(handle->cond_lock);

   scond_signal(handle->cond);
   sthread_join(handle->thread);

   slock_free(handle->lock);
   slock_free(handle->cond_lock);
   scond_free(handle->cond);

   handle->thread = ((void*)0);
}
