
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Atari800_TV_NTSC ;
 scalar_t__ Atari800_tv_mode ;
 int POKEYSND_Process (char*,unsigned int) ;
 int audsrv_play_audio (char*,unsigned int) ;
 int audsrv_wait_audio (unsigned int) ;

void Sound_Update(void)
{
 static char buffer[44100 / 50];
 unsigned int nsamples = (Atari800_tv_mode == Atari800_TV_NTSC) ? (44100 / 60) : (44100 / 50);
 POKEYSND_Process(buffer, nsamples);
 audsrv_wait_audio(nsamples);
 audsrv_play_audio(buffer, nsamples);
}
