
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_FreeYUVOverlay (int *) ;
 int SDL_Quit () ;
 int SDL_SWSURFACE ;
 int SDL_SetVideoMode (int ,int ,int,int ) ;
 int fs_h ;
 int fs_w ;
 int gl_finish () ;
 scalar_t__ plat_sdl_gl_active ;
 int * plat_sdl_overlay ;
 scalar_t__ strcmp (int ,char*) ;
 int vid_drv_name ;

void plat_sdl_finish(void)
{
  if (plat_sdl_overlay != ((void*)0)) {
    SDL_FreeYUVOverlay(plat_sdl_overlay);
    plat_sdl_overlay = ((void*)0);
  }
  if (plat_sdl_gl_active) {
    gl_finish();
    plat_sdl_gl_active = 0;
  }


  if (strcmp(vid_drv_name, "x11") != 0)
    SDL_SetVideoMode(fs_w, fs_h, 16, SDL_SWSURFACE);
  SDL_Quit();
}
