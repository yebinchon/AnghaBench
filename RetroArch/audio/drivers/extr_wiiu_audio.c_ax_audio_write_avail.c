
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t written; } ;
typedef TYPE_1__ ax_audio_t ;


 size_t AX_AUDIO_COUNT ;
 size_t AX_AUDIO_SAMPLE_COUNT ;

__attribute__((used)) static size_t ax_audio_write_avail(void* data)
{
   ax_audio_t* ax = (ax_audio_t*)data;

   size_t ret = AX_AUDIO_COUNT - ax->written;

   return (ret < AX_AUDIO_SAMPLE_COUNT ? 0 : ret);
}
