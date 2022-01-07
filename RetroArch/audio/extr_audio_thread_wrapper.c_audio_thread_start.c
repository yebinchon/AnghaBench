
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_paused; int is_shutdown; } ;
typedef TYPE_1__ audio_thread_t ;


 int audio_driver_enable_callback () ;
 int audio_thread_unblock (TYPE_1__*) ;

__attribute__((used)) static bool audio_thread_start(void *data, bool is_shutdown)
{
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return 0;

   audio_driver_enable_callback();

   thr->is_paused = 0;
   thr->is_shutdown = is_shutdown;
   audio_thread_unblock(thr);

   return 1;
}
