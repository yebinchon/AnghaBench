
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sms_ntsc_t ;
typedef int md_ntsc_t ;
struct TYPE_14__ {scalar_t__ w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {scalar_t__ w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {int changed; scalar_t__ w; int x; scalar_t__ h; int y; } ;
struct TYPE_12__ {TYPE_1__ viewport; } ;
struct TYPE_11__ {int ntsc; scalar_t__ render; } ;
struct TYPE_10__ {int h; int w; } ;
struct TYPE_9__ {int frames_rendered; int surf_screen; TYPE_7__ drect; TYPE_6__ srect; int surf_bitmap; } ;


 int MD_NTSC_OUT_WIDTH (int ) ;
 int SDL_BlitSurface (int ,TYPE_6__*,int ,TYPE_7__*) ;
 int SDL_FillRect (int ,int ,int ) ;
 int SDL_UpdateRect (int ,int ,int ,int ,int ) ;
 int SMS_NTSC_OUT_WIDTH (int ) ;
 int SYSTEM_MCD ;
 int SYSTEM_MD ;
 int SYSTEM_PBC ;
 scalar_t__ VIDEO_HEIGHT ;
 scalar_t__ VIDEO_WIDTH ;
 TYPE_5__ bitmap ;
 TYPE_4__ config ;
 int free (int *) ;
 scalar_t__ interlaced ;
 scalar_t__ malloc (int) ;
 int * md_ntsc ;
 int md_ntsc_composite ;
 int md_ntsc_init (int *,int *) ;
 int md_ntsc_rgb ;
 int md_ntsc_svideo ;
 TYPE_3__ rect ;
 int* reg ;
 TYPE_2__ sdl_video ;
 int * sms_ntsc ;
 int sms_ntsc_composite ;
 int sms_ntsc_init (int *,int *) ;
 int sms_ntsc_rgb ;
 int sms_ntsc_svideo ;
 int system_frame_gen (int ) ;
 int system_frame_scd (int ) ;
 int system_frame_sms (int ) ;
 int system_hw ;

__attribute__((used)) static void sdl_video_update()
{
  if (system_hw == SYSTEM_MCD)
  {
    system_frame_scd(0);
  }
  else if ((system_hw & SYSTEM_PBC) == SYSTEM_MD)
  {
    system_frame_gen(0);
  }
  else
  {
    system_frame_sms(0);
  }


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
