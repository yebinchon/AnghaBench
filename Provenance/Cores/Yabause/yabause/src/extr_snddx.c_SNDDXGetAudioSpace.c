
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ DWORD ;


 scalar_t__ DS_OK ;
 scalar_t__ IDirectSoundBuffer8_GetCurrentPosition (int ,scalar_t__*,scalar_t__*) ;
 int lpDSB2 ;
 scalar_t__ soundbufsize ;
 scalar_t__ soundoffset ;

u32 SNDDXGetAudioSpace(void)
{
   DWORD playcursor, writecursor;
   u32 freespace=0;

   if (IDirectSoundBuffer8_GetCurrentPosition (lpDSB2, &playcursor, &writecursor) != DS_OK)
      return 0;

   if (soundoffset > playcursor)
      freespace = soundbufsize - soundoffset + playcursor;
   else
      freespace = playcursor - soundoffset;


      return (freespace / 2 / 2);


}
