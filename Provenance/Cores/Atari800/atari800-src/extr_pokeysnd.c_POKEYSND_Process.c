
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POKEYSND_Process_ptr (void*,int) ;
 int SndSave_WriteToSoundFile (unsigned char const*,int) ;
 int VOTRAXSND_Process (void*,int) ;

void POKEYSND_Process(void *sndbuffer, int sndn)
{
 POKEYSND_Process_ptr(sndbuffer, sndn);




 SndSave_WriteToSoundFile((const unsigned char *)sndbuffer, sndn);

}
