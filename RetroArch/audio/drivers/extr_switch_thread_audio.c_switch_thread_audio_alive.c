
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ switch_thread_audio_t ;



__attribute__((used)) static bool switch_thread_audio_alive(void *data)
{
   switch_thread_audio_t *swa = (switch_thread_audio_t *)data;

   if (!swa)
         return 0;

   return !swa->is_paused;
}
