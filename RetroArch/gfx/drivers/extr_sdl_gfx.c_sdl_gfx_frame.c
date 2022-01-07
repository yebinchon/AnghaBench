
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int uint64_t ;
typedef int title ;
struct TYPE_11__ {int frame; scalar_t__ active; } ;
struct TYPE_13__ {int in_fmt; } ;
struct TYPE_12__ {TYPE_5__* screen; TYPE_1__ menu; TYPE_3__ scaler; } ;
typedef TYPE_2__ sdl_video_t ;
struct TYPE_14__ {int format; int h; int w; int pitch; int pixels; } ;


 int SDL_BlitSurface (int ,int *,TYPE_5__*,int *) ;
 int SDL_Flip (TYPE_5__*) ;
 int SDL_LockSurface (TYPE_5__*) ;
 scalar_t__ SDL_MUSTLOCK (TYPE_5__*) ;
 int SDL_UnlockSurface (TYPE_5__*) ;
 int SDL_WM_SetCaption (char*,int *) ;
 int menu_driver_frame (int *) ;
 int sdl_render_msg (TYPE_2__*,TYPE_5__*,char const*,int ,int ,int ) ;
 int video_driver_get_window_title (char*,int) ;
 int video_frame_scale (TYPE_3__*,int ,void const*,int ,int ,int ,int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static bool sdl_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   sdl_video_t *vid = (sdl_video_t*)data;
   char title[128];

   if (!frame)
      return 1;

   title[0] = '\0';

   video_driver_get_window_title(title, sizeof(title));

   if (SDL_MUSTLOCK(vid->screen))
      SDL_LockSurface(vid->screen);

   video_frame_scale(
         &vid->scaler,
         vid->screen->pixels,
         frame,
         vid->scaler.in_fmt,
         vid->screen->w,
         vid->screen->h,
         vid->screen->pitch,
         width,
         height,
         pitch);





   if (vid->menu.active)
      SDL_BlitSurface(vid->menu.frame, ((void*)0), vid->screen, ((void*)0));

   if (msg)
      sdl_render_msg(vid, vid->screen,
            msg, vid->screen->w, vid->screen->h, vid->screen->format);

   if (SDL_MUSTLOCK(vid->screen))
      SDL_UnlockSurface(vid->screen);

   if (title[0])
      SDL_WM_SetCaption(title, ((void*)0));

   SDL_Flip(vid->screen);

   return 1;
}
