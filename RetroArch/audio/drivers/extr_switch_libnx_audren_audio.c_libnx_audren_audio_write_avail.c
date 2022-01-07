
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t buffer_size; size_t current_size; int current_wavebuf; } ;
typedef TYPE_1__ libnx_audren_t ;



__attribute__((used)) static size_t libnx_audren_audio_write_avail(void *data)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;
   size_t avail;

   if (!aud || !aud->current_wavebuf)
      return 0;

   avail = aud->buffer_size - aud->current_size;

   return avail;
}
