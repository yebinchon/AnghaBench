
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASND_End () ;
 int ASND_Pause (int) ;
 scalar_t__ Bg_music_ogg ;
 int PauseOgg (int) ;
 int StopOgg () ;
 int free (scalar_t__) ;

void gx_audio_Shutdown(void)
{
  PauseOgg(1);
  StopOgg();
  ASND_Pause(1);
  ASND_End();
  if (Bg_music_ogg)
  {
    free(Bg_music_ogg);
  }
}
