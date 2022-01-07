
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POKEYSND_BIT16 ;
 int POKEYSND_snd_flags ;
 int SndSave_CloseSoundFile () ;
 int byteswritten ;
 int fwrite (unsigned char const*,int,unsigned int,scalar_t__) ;
 scalar_t__ sndoutput ;

int SndSave_WriteToSoundFile(const unsigned char *ucBuffer, unsigned int uiSize)
{

 if (sndoutput && ucBuffer && uiSize) {
  int result;
  if (POKEYSND_snd_flags & POKEYSND_BIT16)
   uiSize <<= 1;
  result = fwrite(ucBuffer, 1, uiSize, sndoutput);
  byteswritten += result;
  if (result != uiSize) {
   SndSave_CloseSoundFile();
  }

  return result;
 }

 return 0;
}
