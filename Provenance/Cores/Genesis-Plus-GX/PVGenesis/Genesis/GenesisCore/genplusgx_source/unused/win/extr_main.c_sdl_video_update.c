
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_9__ {scalar_t__ w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_6__ {int changed; scalar_t__ w; int x; scalar_t__ h; int y; } ;
struct TYPE_8__ {TYPE_1__ viewport; } ;
struct TYPE_7__ {int frames_rendered; int surf_screen; TYPE_5__ drect; TYPE_4__ srect; int surf_bitmap; } ;


 int SDL_BlitSurface (int ,TYPE_4__*,int ,TYPE_5__*) ;
 int SDL_FillRect (int ,int ,int ) ;
 int SDL_UpdateRect (int ,int ,int ,int ,int ) ;
 scalar_t__ VIDEO_HEIGHT ;
 scalar_t__ VIDEO_WIDTH ;
 TYPE_3__ bitmap ;
 TYPE_2__ sdl_video ;
 int system_frame (int ) ;

__attribute__((used)) static void sdl_video_update()
{
  system_frame(0);


  if(bitmap.viewport.changed & 1)
  {
    bitmap.viewport.changed &= ~1;


    sdl_video.srect.w = bitmap.viewport.w+2*bitmap.viewport.x;
    sdl_video.srect.h = bitmap.viewport.h+2*bitmap.viewport.y;
    sdl_video.srect.x = 0;
    sdl_video.srect.y = 0;
    if (sdl_video.srect.w > VIDEO_WIDTH)
    {
      sdl_video.srect.x = (sdl_video.srect.w - VIDEO_WIDTH) / 2;
      sdl_video.srect.w = VIDEO_WIDTH;
    }
    if (sdl_video.srect.h > VIDEO_HEIGHT)
    {
      sdl_video.srect.y = (sdl_video.srect.h - VIDEO_HEIGHT) / 2;
      sdl_video.srect.h = VIDEO_HEIGHT;
    }


    sdl_video.drect.w = sdl_video.srect.w;
    sdl_video.drect.h = sdl_video.srect.h;
    sdl_video.drect.x = (VIDEO_WIDTH - sdl_video.drect.w) / 2;
    sdl_video.drect.y = (VIDEO_HEIGHT - sdl_video.drect.h) / 2;


    SDL_FillRect(sdl_video.surf_screen, 0, 0);
  }

  SDL_BlitSurface(sdl_video.surf_bitmap, &sdl_video.srect, sdl_video.surf_screen, &sdl_video.drect);
  SDL_UpdateRect(sdl_video.surf_screen, 0, 0, 0, 0);

  ++sdl_video.frames_rendered;
}
