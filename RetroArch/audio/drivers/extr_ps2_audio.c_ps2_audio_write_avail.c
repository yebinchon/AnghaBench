
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ running; } ;
typedef TYPE_1__ ps2_audio_t ;


 size_t AUDIO_BUFFER ;

__attribute__((used)) static size_t ps2_audio_write_avail(void *data)
{
   ps2_audio_t* ps2 = (ps2_audio_t*)data;

   if (ps2 && ps2->running)
      return AUDIO_BUFFER;

   return 0;
}
