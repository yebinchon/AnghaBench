
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ alsa_thread_t ;



__attribute__((used)) static bool alsa_thread_start(void *data, bool is_shutdown)
{
   alsa_thread_t *alsa = (alsa_thread_t*)data;

   if (alsa)
      alsa->is_paused = 0;
   return 1;
}
