
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Buffer ;
 int FCEUI_Sound (int ) ;
 int SDL_CloseAudio () ;
 int SDL_INIT_AUDIO ;
 int SDL_QuitSubSystem (int ) ;
 int free (scalar_t__) ;

int KillSound(void)
{
 FCEUI_Sound(0);
 SDL_CloseAudio();
 SDL_QuitSubSystem(SDL_INIT_AUDIO);
 if(Buffer)
 {
  free(Buffer);
  Buffer = 0;
 }
 return(0);
}
