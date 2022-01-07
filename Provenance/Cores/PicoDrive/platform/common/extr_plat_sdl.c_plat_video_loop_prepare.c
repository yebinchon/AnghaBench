
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pixels; } ;


 int PicoDrawSetOutBuf (int ,int) ;
 int SDL_LockSurface (TYPE_1__*) ;
 scalar_t__ SDL_MUSTLOCK (TYPE_1__*) ;
 int g_screen_height ;
 int g_screen_ptr ;
 int g_screen_width ;
 int plat_sdl_change_video_mode (int,int ,int ) ;
 scalar_t__ plat_sdl_gl_active ;
 int * plat_sdl_overlay ;
 TYPE_1__* plat_sdl_screen ;
 int shadow_fb ;

void plat_video_loop_prepare(void)
{
 plat_sdl_change_video_mode(g_screen_width, g_screen_height, 0);

 if (plat_sdl_overlay != ((void*)0) || plat_sdl_gl_active) {
  g_screen_ptr = shadow_fb;
 }
 else {
  if (SDL_MUSTLOCK(plat_sdl_screen))
   SDL_LockSurface(plat_sdl_screen);
  g_screen_ptr = plat_sdl_screen->pixels;
 }
 PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);
}
