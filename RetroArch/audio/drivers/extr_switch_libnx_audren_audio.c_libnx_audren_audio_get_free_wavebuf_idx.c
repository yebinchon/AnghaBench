
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int ssize_t ;
struct TYPE_5__ {TYPE_1__* wavebufs; } ;
typedef TYPE_2__ libnx_audren_t ;
struct TYPE_4__ {scalar_t__ state; } ;


 scalar_t__ AudioDriverWaveBufState_Done ;
 scalar_t__ AudioDriverWaveBufState_Free ;
 unsigned int BUFFER_COUNT ;

__attribute__((used)) static ssize_t libnx_audren_audio_get_free_wavebuf_idx(libnx_audren_t* aud)
{
   unsigned i;

   for (i = 0; i < BUFFER_COUNT; i++)
   {
      if (aud->wavebufs[i].state == AudioDriverWaveBufState_Free
         || aud->wavebufs[i].state == AudioDriverWaveBufState_Done)
      {
         return i;
      }
   }

   return -1;
}
