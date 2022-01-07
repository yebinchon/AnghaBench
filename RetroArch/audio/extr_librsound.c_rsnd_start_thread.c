
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sthread_t ;
struct TYPE_5__ {int * thread; } ;
struct TYPE_6__ {int thread_active; TYPE_1__ thread; scalar_t__ audio_callback; } ;
typedef TYPE_2__ rsound_t ;


 int RSD_ERR (char*) ;
 int rsnd_cb_thread ;
 int rsnd_thread ;
 scalar_t__ sthread_create (int ,TYPE_2__*) ;

__attribute__((used)) static int rsnd_start_thread(rsound_t *rd)
{
   if ( !rd->thread_active )
   {
      rd->thread_active = 1;
      rd->thread.thread = (sthread_t*)sthread_create(rd->audio_callback ? rsnd_cb_thread : rsnd_thread, rd);
      if ( !rd->thread.thread )
      {
         rd->thread_active = 0;
         RSD_ERR("[RSound] Failed to create thread.");
         return -1;
      }
      return 0;
   }
   else
      return 0;
}
