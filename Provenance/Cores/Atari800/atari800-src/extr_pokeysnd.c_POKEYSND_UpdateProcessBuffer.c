
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POKEYSND_BIT16 ;
 scalar_t__ POKEYSND_process_buffer ;
 int POKEYSND_process_buffer_fill ;
 int POKEYSND_snd_flags ;
 int SndSave_WriteToSoundFile (unsigned char const*,int) ;
 int Update_synchronized_sound () ;
 int VOTRAXSND_Process (scalar_t__,int) ;

int POKEYSND_UpdateProcessBuffer(void)
{
 int sndn;
 Update_synchronized_sound();
 sndn = POKEYSND_process_buffer_fill / ((POKEYSND_snd_flags & POKEYSND_BIT16) ? 2 : 1);
 POKEYSND_process_buffer_fill = 0;





 SndSave_WriteToSoundFile((const unsigned char *)POKEYSND_process_buffer, sndn);

 return sndn;
}
