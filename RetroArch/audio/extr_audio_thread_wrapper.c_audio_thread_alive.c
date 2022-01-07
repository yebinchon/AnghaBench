
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_paused; } ;
typedef TYPE_1__ audio_thread_t ;


 int audio_thread_block (TYPE_1__*) ;
 int audio_thread_unblock (TYPE_1__*) ;

__attribute__((used)) static bool audio_thread_alive(void *data)
{
   bool alive = 0;
   audio_thread_t *thr = (audio_thread_t*)data;

   if (!thr)
      return 0;

   audio_thread_block(thr);
   alive = !thr->is_paused;
   audio_thread_unblock(thr);

   return alive;
}
