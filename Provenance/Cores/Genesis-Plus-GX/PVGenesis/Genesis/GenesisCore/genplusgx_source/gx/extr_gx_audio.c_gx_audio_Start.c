
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASND_End () ;
 int ASND_Pause (int) ;
 int AUDIO_RegisterDMACallback (int *) ;
 int AUDIO_StopDMA () ;
 int DSP_Halt () ;
 int PauseOgg (int) ;
 int SOUND_BUFFER_LEN ;
 int StopOgg () ;
 int * ai_callback ;
 scalar_t__ audioStarted ;
 scalar_t__ audio_sync ;
 int memset (int ,int ,int) ;
 scalar_t__ mixbuffer ;
 int soundbuffer ;

void gx_audio_Start(void)
{

  PauseOgg(1);
  StopOgg();


  ASND_Pause(1);
  ASND_End();
  AUDIO_StopDMA();
  AUDIO_RegisterDMACallback(((void*)0));
  DSP_Halt();


  AUDIO_RegisterDMACallback(ai_callback);


  memset(soundbuffer, 0, 3 * SOUND_BUFFER_LEN);
  audioStarted = 0;
  mixbuffer = 0;
  audio_sync = 0;
}
