
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ surf_screen; scalar_t__ surf_bitmap; } ;


 int SDL_FreeSurface (scalar_t__) ;
 TYPE_1__ sdl_video ;

__attribute__((used)) static void sdl_video_close()
{
  if (sdl_video.surf_bitmap)
    SDL_FreeSurface(sdl_video.surf_bitmap);
  if (sdl_video.surf_screen)
    SDL_FreeSurface(sdl_video.surf_screen);
}
