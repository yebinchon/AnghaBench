
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCEUI_SetSoundVolume (int ) ;
 int FCEU_DispMessage (char*) ;
 int mute ;
 int soundvolume ;

void FCEUD_SoundToggle(void)
{
 if(mute)
 {
  mute=0;
  FCEUI_SetSoundVolume(soundvolume);
  FCEU_DispMessage("Sound mute off.");
 }
 else
 {
  mute=1;
  FCEUI_SetSoundVolume(0);
  FCEU_DispMessage("Sound mute on.");
 }
}
