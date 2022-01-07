
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int running; } ;
typedef TYPE_1__ ps2_audio_t ;


 int audsrv_play_audio (void const*,size_t) ;

__attribute__((used)) static ssize_t ps2_audio_write(void *data, const void *buf, size_t size)
{
   int bytes_sent;
   ps2_audio_t* ps2 = (ps2_audio_t*)data;

   if (!ps2->running)
      return -1;

   bytes_sent = audsrv_play_audio(buf, size);

   return bytes_sent;
}
