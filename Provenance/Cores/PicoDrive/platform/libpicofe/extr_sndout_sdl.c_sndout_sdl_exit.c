
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_INIT_AUDIO ;
 int SDL_QuitSubSystem (int ) ;
 int sndout_sdl_stop () ;
 scalar_t__ started ;

void sndout_sdl_exit(void)
{
 if (started)
  sndout_sdl_stop();
 SDL_QuitSubSystem(SDL_INIT_AUDIO);
}
