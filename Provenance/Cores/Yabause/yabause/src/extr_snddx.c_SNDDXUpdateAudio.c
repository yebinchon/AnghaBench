
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;
typedef int s16 ;
typedef scalar_t__ LPVOID ;
typedef int DWORD ;


 int DSBSTATUS_BUFFERLOST ;
 int IDirectSoundBuffer8_GetStatus (int ,int*) ;
 int IDirectSoundBuffer8_Lock (int ,int ,int,scalar_t__*,int*,scalar_t__*,int*,int ) ;
 int IDirectSoundBuffer8_Unlock (int ,scalar_t__,int,scalar_t__,int) ;
 int ScspConvert32uto16s (int *,int *,int *,int) ;
 int lpDSB2 ;
 int memcpy (scalar_t__,int *,int) ;
 int soundbufsize ;
 int soundoffset ;
 int * stereodata16 ;

void SNDDXUpdateAudio(u32 *leftchanbuffer, u32 *rightchanbuffer, u32 num_samples)
{
   LPVOID buffer1;
   LPVOID buffer2;
   DWORD buffer1_size, buffer2_size;
   DWORD status;

   IDirectSoundBuffer8_GetStatus(lpDSB2, &status);

   if (status & DSBSTATUS_BUFFERLOST)
      return;

   IDirectSoundBuffer8_Lock(lpDSB2, soundoffset, num_samples * sizeof(s16) * 2, &buffer1, &buffer1_size, &buffer2, &buffer2_size, 0);

   ScspConvert32uto16s((s32 *)leftchanbuffer, (s32 *)rightchanbuffer, (s16 *)stereodata16, num_samples);
   memcpy(buffer1, stereodata16, buffer1_size);
   if (buffer2)
      memcpy(buffer2, ((u8 *)stereodata16)+buffer1_size, buffer2_size);

   soundoffset += buffer1_size + buffer2_size;
   soundoffset %= soundbufsize;

   IDirectSoundBuffer8_Unlock(lpDSB2, buffer1, buffer1_size, buffer2, buffer2_size);
}
