
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSBVOLUME_MIN ;
 int IDirectSoundBuffer8_SetVolume (int ,int ) ;
 int issoundmuted ;
 int lpDSB2 ;

void SNDDXMuteAudio(void)
{
   issoundmuted = 1;
   IDirectSoundBuffer8_SetVolume (lpDSB2, DSBVOLUME_MIN);
}
