
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int POKEYSND_BIT16 ;
 int POKEYSND_num_pokeys ;
 int POKEYSND_playback_freq ;
 int POKEYSND_snd_flags ;
 int SndSave_CloseSoundFile () ;
 int TRUE ;
 scalar_t__ byteswritten ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fputc (int,int *) ;
 int fwrite (char*,int,int,int *) ;
 int * sndoutput ;
 int write32 (int) ;

int SndSave_OpenSoundFile(const char *szFileName)
{
 SndSave_CloseSoundFile();

 sndoutput = fopen(szFileName, "wb");

 if (sndoutput == ((void*)0))
  return FALSE;
 if (fwrite("RIFF\0\0\0\0WAVEfmt \x10\0\0\0\1\0", 1, 22, sndoutput) != 22) {
  fclose(sndoutput);
  sndoutput = ((void*)0);
  return FALSE;
 }

 fputc(POKEYSND_num_pokeys, sndoutput);
 fputc(0, sndoutput);
 write32(POKEYSND_playback_freq);


 write32(POKEYSND_playback_freq * (POKEYSND_snd_flags & POKEYSND_BIT16 ? POKEYSND_num_pokeys << 1 : POKEYSND_num_pokeys));

 fputc(POKEYSND_snd_flags & POKEYSND_BIT16 ? POKEYSND_num_pokeys << 1 : POKEYSND_num_pokeys, sndoutput);
 fputc(0, sndoutput);

 fputc(POKEYSND_snd_flags & POKEYSND_BIT16? 16: 8, sndoutput);

 if (fwrite("\0data\0\0\0\0", 1, 9, sndoutput) != 9) {
  fclose(sndoutput);
  sndoutput = ((void*)0);
  return FALSE;
 }

 byteswritten = 0;
 return TRUE;
}
