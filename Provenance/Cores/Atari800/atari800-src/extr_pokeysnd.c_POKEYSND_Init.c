
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef unsigned int UBYTE ;


 int ANTIC_CPU_CLOCK ;
 double Atari800_FPS_NTSC ;
 double Atari800_FPS_PAL ;
 int Atari800_TV_PAL ;
 int Atari800_tv_mode ;
 int POKEYSND_BIT16 ;
 int POKEYSND_DoInit () ;
 unsigned int POKEYSND_num_pokeys ;
 int POKEYSND_playback_freq ;
 unsigned int* POKEYSND_process_buffer ;
 scalar_t__ POKEYSND_process_buffer_fill ;
 unsigned int POKEYSND_process_buffer_length ;
 int POKEYSND_snd_flags ;
 scalar_t__ Util_malloc (unsigned int) ;
 int VOTRAXSND_Init (int,unsigned int,int) ;
 scalar_t__ ceil (double) ;
 int free (unsigned int*) ;
 int mz_clear_regs ;
 int prev_update_tick ;
 int snd_freq17 ;

int POKEYSND_Init(ULONG freq17, int playback_freq, UBYTE num_pokeys,
                     int flags



)
{
 snd_freq17 = freq17;
 POKEYSND_playback_freq = playback_freq;
 POKEYSND_num_pokeys = num_pokeys;
 POKEYSND_snd_flags = flags;
 return POKEYSND_DoInit();
}
