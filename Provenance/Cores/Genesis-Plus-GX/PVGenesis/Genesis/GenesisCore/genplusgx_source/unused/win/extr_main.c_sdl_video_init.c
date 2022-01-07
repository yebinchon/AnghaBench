
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ frames_rendered; int surf_bitmap; int surf_screen; } ;


 int MessageBox (int *,char*,char*,int ) ;
 int SDL_CreateRGBSurface (int,int,int,int,int ,int ,int ,int ) ;
 int SDL_INIT_VIDEO ;
 scalar_t__ SDL_InitSubSystem (int ) ;
 int SDL_SWSURFACE ;
 int SDL_SetVideoMode (int ,int ,int,int) ;
 int SDL_ShowCursor (int ) ;
 int VIDEO_HEIGHT ;
 int VIDEO_WIDTH ;
 int fullscreen ;
 TYPE_1__ sdl_video ;

__attribute__((used)) static int sdl_video_init()
{
  if(SDL_InitSubSystem(SDL_INIT_VIDEO) < 0) {
    MessageBox(((void*)0), "SDL Video initialization failed", "Error", 0);
    return 0;
  }
  sdl_video.surf_screen = SDL_SetVideoMode(VIDEO_WIDTH, VIDEO_HEIGHT, 16, SDL_SWSURFACE | fullscreen);
  sdl_video.surf_bitmap = SDL_CreateRGBSurface(SDL_SWSURFACE, 720, 576, 16, 0, 0, 0, 0);
  sdl_video.frames_rendered = 0;
  SDL_ShowCursor(0);

  return 1;
}
