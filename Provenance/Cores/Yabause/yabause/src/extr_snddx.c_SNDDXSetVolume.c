
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;


 scalar_t__ DSBVOLUME_MIN ;
 int IDirectSoundBuffer8_SetVolume (int ,scalar_t__) ;
 int issoundmuted ;
 double log10 (double) ;
 int lpDSB2 ;
 scalar_t__ soundvolume ;

void SNDDXSetVolume(int volume)
{

   if (volume == 0)
      soundvolume = DSBVOLUME_MIN;
   else
      soundvolume = (LONG)(log10((double)volume / 100.0) * 2000.0);

   if (!issoundmuted)
      IDirectSoundBuffer8_SetVolume (lpDSB2, soundvolume);
}
