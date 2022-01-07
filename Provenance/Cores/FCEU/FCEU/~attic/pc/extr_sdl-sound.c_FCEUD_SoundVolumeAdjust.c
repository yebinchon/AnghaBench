
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FCEUI_SetSoundVolume (int) ;
 int FCEU_DispMessage (char*,int) ;
 scalar_t__ mute ;
 int soundvolume ;

void FCEUD_SoundVolumeAdjust(int n)
{
 switch(n)
 {
 case -1: soundvolume-=10; if(soundvolume<0) soundvolume=0; break;
 case 0: soundvolume=100; break;
 case 1: soundvolume+=10; if(soundvolume>150) soundvolume=150; break;
 }
 mute=0;
 FCEUI_SetSoundVolume(soundvolume);
 FCEU_DispMessage("Sound volume %d.", soundvolume);
}
