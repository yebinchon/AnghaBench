
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pixels; } ;


 int SDL_LockSurface (TYPE_1__*) ;
 scalar_t__ SDL_MUSTLOCK (TYPE_1__*) ;
 int g_menuscreen_ptr ;
 scalar_t__ plat_sdl_gl_active ;
 int * plat_sdl_overlay ;
 TYPE_1__* plat_sdl_screen ;
 int shadow_fb ;

void plat_video_menu_begin(void)
{
 if (plat_sdl_overlay != ((void*)0) || plat_sdl_gl_active) {
  g_menuscreen_ptr = shadow_fb;
 }
 else {
  if (SDL_MUSTLOCK(plat_sdl_screen))
   SDL_LockSurface(plat_sdl_screen);
  g_menuscreen_ptr = plat_sdl_screen->pixels;
 }
}
