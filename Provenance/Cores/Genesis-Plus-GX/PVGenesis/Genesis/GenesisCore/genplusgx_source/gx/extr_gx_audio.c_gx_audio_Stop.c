
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bgm_volume; } ;


 int ASND_Init () ;
 int ASND_Pause (int ) ;
 scalar_t__ Bg_music_ogg ;
 int Bg_music_ogg_size ;
 int DSP_Unhalt () ;
 int OGG_INFINITE_TIME ;
 int PauseOgg (int ) ;
 int PlayOgg (char*,int ,int ,int ) ;
 int SetVolumeOgg (int) ;
 int Shutdown ;
 TYPE_1__ config ;

void gx_audio_Stop(void)
{

  DSP_Unhalt();
  ASND_Init();
  ASND_Pause(0);


  if (Bg_music_ogg && !Shutdown)
  {
    PauseOgg(0);
    PlayOgg((char *)Bg_music_ogg, Bg_music_ogg_size, 0, OGG_INFINITE_TIME);
    SetVolumeOgg(((int)config.bgm_volume * 255) / 100);
  }
}
