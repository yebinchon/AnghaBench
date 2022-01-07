
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_INIT_AUDIO ;
 int SDL_InitSubSystem (int ) ;

int sndout_sdl_init(void)
{
 int ret;

 ret = SDL_InitSubSystem(SDL_INIT_AUDIO);
 if (ret != 0)
  return -1;

 return 0;
}
