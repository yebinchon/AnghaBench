
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POKEYSND_UpdateConsol_ptr (int) ;
 int POKEYSND_console_sound_enabled ;
 int Update_synchronized_sound () ;

void POKEYSND_UpdateConsol(int set)
{
 if (!POKEYSND_console_sound_enabled)
  return;




 POKEYSND_UpdateConsol_ptr(set);
}
