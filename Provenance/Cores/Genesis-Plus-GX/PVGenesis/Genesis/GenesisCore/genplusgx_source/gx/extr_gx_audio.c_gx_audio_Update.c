
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int AUDIO_InitDMA (int ,int) ;
 int AUDIO_StartDMA () ;
 int AUDIO_StopDMA () ;
 int DCFlushRange (void*,int) ;
 int LOGSIZE ;
 int NO_SYNC ;
 size_t SOUND_BUFFER_NUM ;
 int SYNC_AUDIO ;
 int audioStarted ;
 int audio_sync ;
 int audio_update (int *) ;
 int* delta_samp ;
 int frame_cnt ;
 size_t mixbuffer ;
 scalar_t__ prevtime ;
 scalar_t__* soundbuffer ;

int gx_audio_Update(void)
{
  if (!audio_sync)
  {

    s16 *sb = (s16 *)(soundbuffer[mixbuffer]);


    int size = audio_update(sb) * 4;
    DCFlushRange((void *)sb, size);
    AUDIO_InitDMA((u32) sb, size);
    mixbuffer = (mixbuffer + 1) % SOUND_BUFFER_NUM;
    audio_sync = 1;
    if (!audioStarted)
    {

      AUDIO_StopDMA();
      AUDIO_StartDMA();
      audioStarted = 1;
    }

    return SYNC_AUDIO;
  }

  return NO_SYNC;
}
