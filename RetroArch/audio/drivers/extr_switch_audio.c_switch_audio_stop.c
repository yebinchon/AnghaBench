
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_paused; } ;
typedef TYPE_1__ switch_audio_t ;


 scalar_t__ switch_audio_ipc_output_stop (TYPE_1__*) ;

__attribute__((used)) static bool switch_audio_stop(void *data)
{
   switch_audio_t *swa = (switch_audio_t*) data;
   if (!swa)
      return 0;




   if (!swa->is_paused)
    if (switch_audio_ipc_output_stop(swa) != 0)
     return 0;

   swa->is_paused = 1;

   return 1;
}
