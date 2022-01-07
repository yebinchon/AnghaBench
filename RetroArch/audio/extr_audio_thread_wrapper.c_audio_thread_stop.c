
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_paused; } ;
typedef TYPE_1__ audio_thread_t ;


 int audio_driver_disable_callback () ;
 int audio_thread_block (TYPE_1__*) ;

__attribute__((used)) static bool audio_thread_stop(void *data)
{
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return 0;

   audio_thread_block(thr);
   thr->is_paused = 1;

   audio_driver_disable_callback();

   return 1;
}
