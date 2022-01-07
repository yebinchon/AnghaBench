
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double Atari800_FPS_NTSC ;
 double Atari800_FPS_PAL ;
 int Atari800_TV_PAL ;
 int Atari800_tv_mode ;
 int Generate_sync_rf ;
 int POKEYSND_GenerateSync ;
 scalar_t__ POKEYSND_playback_freq ;
 double samp_pos ;
 scalar_t__ speaker ;
 double ticks_per_sample ;

__attribute__((used)) static void init_syncsound(void)
{
 double samples_per_frame = (double)POKEYSND_playback_freq/(Atari800_tv_mode == Atari800_TV_PAL ? Atari800_FPS_PAL : Atari800_FPS_NTSC);
 unsigned int ticks_per_frame = Atari800_tv_mode*114;
 ticks_per_sample = (double)ticks_per_frame / samples_per_frame;
 samp_pos = 0.0;
 POKEYSND_GenerateSync = Generate_sync_rf;
 speaker = 0;
}
