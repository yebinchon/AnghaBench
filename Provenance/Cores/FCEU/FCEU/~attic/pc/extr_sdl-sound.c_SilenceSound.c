
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_PauseAudio (int) ;

void SilenceSound(int n)
{
 SDL_PauseAudio(n);
}
