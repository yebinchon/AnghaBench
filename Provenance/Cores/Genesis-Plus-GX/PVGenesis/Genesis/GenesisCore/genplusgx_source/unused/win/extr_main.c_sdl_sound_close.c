
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer; } ;


 int SDL_CloseAudio () ;
 int SDL_PauseAudio (int) ;
 int free (scalar_t__) ;
 TYPE_1__ sdl_sound ;

__attribute__((used)) static void sdl_sound_close()
{
  SDL_PauseAudio(1);
  SDL_CloseAudio();
  if (sdl_sound.buffer)
    free(sdl_sound.buffer);
}
