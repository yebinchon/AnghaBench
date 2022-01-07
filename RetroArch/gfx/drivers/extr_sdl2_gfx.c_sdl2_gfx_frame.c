
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ libretro_running; } ;
typedef TYPE_4__ video_frame_info_t ;
typedef int uint64_t ;
typedef int title ;
struct TYPE_13__ {int tex; scalar_t__ active; } ;
struct TYPE_12__ {int tex; } ;
struct TYPE_11__ {int rgb32; } ;
struct TYPE_15__ {int renderer; TYPE_3__ menu; int rotation; TYPE_2__ frame; TYPE_1__ video; scalar_t__ should_resize; } ;
typedef TYPE_5__ sdl2_video_t ;
typedef int SDL_Window ;


 int SDL_FLIP_NONE ;
 int SDL_RenderClear (int ) ;
 int SDL_RenderCopy (int ,int ,int *,int *) ;
 int SDL_RenderCopyEx (int ,int ,int *,int *,int ,int *,int ) ;
 int SDL_RenderPresent (int ) ;
 int SDL_SetWindowTitle (int *,char*) ;
 int SDL_UpdateTexture (int ,int *,void const*,unsigned int) ;
 int menu_driver_frame (TYPE_4__*) ;
 int sdl2_render_msg (TYPE_5__*,char const*) ;
 int sdl_refresh_input_size (TYPE_5__*,int,int ,unsigned int,unsigned int,unsigned int) ;
 int sdl_refresh_viewport (TYPE_5__*) ;
 scalar_t__ video_driver_display_userdata_get () ;
 int video_driver_get_window_title (char*,int) ;

__attribute__((used)) static bool sdl2_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   char title[128];

   if (vid->should_resize)
      sdl_refresh_viewport(vid);

   if (frame && video_info->libretro_running)
   {
      SDL_RenderClear(vid->renderer);
      sdl_refresh_input_size(vid, 0, vid->video.rgb32, width, height, pitch);
      SDL_UpdateTexture(vid->frame.tex, ((void*)0), frame, pitch);
   }

   SDL_RenderCopyEx(vid->renderer, vid->frame.tex, ((void*)0), ((void*)0), vid->rotation, ((void*)0), SDL_FLIP_NONE);





   if (vid->menu.active)
      SDL_RenderCopy(vid->renderer, vid->menu.tex, ((void*)0), ((void*)0));

   if (msg)
      sdl2_render_msg(vid, msg);

   SDL_RenderPresent(vid->renderer);

   title[0] = '\0';

   video_driver_get_window_title(title, sizeof(title));

   if (title[0])
      SDL_SetWindowTitle((SDL_Window*)video_driver_display_userdata_get(), title);

   return 1;
}
