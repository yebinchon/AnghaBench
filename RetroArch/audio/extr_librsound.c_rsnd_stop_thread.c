
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; int cond_mutex; int cond; } ;
struct TYPE_5__ {TYPE_1__ thread; scalar_t__ thread_active; } ;
typedef TYPE_2__ rsound_t ;


 int RSD_DEBUG (char*) ;
 int scond_signal (int ) ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;
 int sthread_join (int ) ;

__attribute__((used)) static int rsnd_stop_thread(rsound_t *rd)
{
   if ( rd->thread_active )
   {

      RSD_DEBUG("[RSound] Shutting down thread.\n");

      slock_lock(rd->thread.cond_mutex);
      rd->thread_active = 0;
      scond_signal(rd->thread.cond);
      slock_unlock(rd->thread.cond_mutex);

      sthread_join(rd->thread.thread);
      RSD_DEBUG("[RSound] Thread joined successfully.\n");

      return 0;
   }
   else
   {
      RSD_DEBUG("Thread is already shut down.\n");
      return 0;
   }
}
