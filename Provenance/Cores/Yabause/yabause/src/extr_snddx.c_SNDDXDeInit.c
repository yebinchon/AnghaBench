
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ DSBSTATUS_PLAYING ;
 int IDirectSound8_Release (int *) ;
 int IDirectSoundBuffer8_GetStatus (int *,scalar_t__*) ;
 int IDirectSoundBuffer8_Release (int *) ;
 int IDirectSoundBuffer8_Stop (int *) ;
 int * lpDS8 ;
 int * lpDSB ;
 int * lpDSB2 ;

void SNDDXDeInit(void)
{
   DWORD status=0;

   if (lpDSB2)
   {
      IDirectSoundBuffer8_GetStatus(lpDSB2, &status);

      if(status == DSBSTATUS_PLAYING)
         IDirectSoundBuffer8_Stop(lpDSB2);

      IDirectSoundBuffer8_Release(lpDSB2);
      lpDSB2 = ((void*)0);
   }

   if (lpDSB)
   {
      IDirectSoundBuffer8_Release(lpDSB);
      lpDSB = ((void*)0);
   }

   if (lpDS8)
   {
      IDirectSound8_Release(lpDS8);
      lpDS8 = ((void*)0);
   }
}
