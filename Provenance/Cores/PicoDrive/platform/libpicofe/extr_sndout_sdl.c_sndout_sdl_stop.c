
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_CloseAudio () ;
 int SDL_PauseAudio (int) ;
 scalar_t__ started ;

void sndout_sdl_stop(void)
{
 SDL_PauseAudio(1);
 SDL_CloseAudio();
 started = 0;
}
