
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDirectSoundBuffer8_SetVolume (int ,int ) ;
 scalar_t__ issoundmuted ;
 int lpDSB2 ;
 int soundvolume ;

void SNDDXUnMuteAudio(void)
{
   issoundmuted = 0;
   IDirectSoundBuffer8_SetVolume (lpDSB2, soundvolume);
}
