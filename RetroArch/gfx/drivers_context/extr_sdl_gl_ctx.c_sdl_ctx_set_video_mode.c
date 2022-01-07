
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int monitor_index; scalar_t__ windowed_fullscreen; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_5__ {unsigned int g_new_width; unsigned int g_new_height; int g_full; unsigned int g_width; unsigned int g_height; scalar_t__ g_ctx; scalar_t__ g_win; } ;
typedef TYPE_2__ gfx_ctx_sdl_data_t ;


 int RARCH_DISPLAY_OSX ;
 int RARCH_DISPLAY_WIN32 ;
 int RARCH_DISPLAY_X11 ;
 int RARCH_WARN (char*,int ) ;
 scalar_t__ SDL_CreateWindow (char*,int ,int ,unsigned int,unsigned int,unsigned int) ;
 unsigned int SDL_FULLSCREEN ;
 scalar_t__ SDL_GL_CreateContext (scalar_t__) ;
 int SDL_GetError () ;
 unsigned int SDL_OPENGL ;
 scalar_t__ SDL_SetVideoMode (unsigned int,unsigned int,int ,unsigned int) ;
 int SDL_SetWindowFullscreen (scalar_t__,unsigned int) ;
 int SDL_SetWindowSize (scalar_t__,unsigned int,unsigned int) ;
 int SDL_WINDOWPOS_UNDEFINED_DISPLAY (unsigned int) ;
 unsigned int SDL_WINDOW_FULLSCREEN ;
 unsigned int SDL_WINDOW_FULLSCREEN_DESKTOP ;
 unsigned int SDL_WINDOW_OPENGL ;
 int sdl2_set_handles (scalar_t__,int ) ;
 int video_driver_set_video_cache_context_ack () ;

__attribute__((used)) static bool sdl_ctx_set_video_mode(void *data,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      bool fullscreen)
{
   unsigned fsflag = 0;
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)data;

   sdl->g_new_width = width;
   sdl->g_new_height = height;
   if (fullscreen)
      fsflag = SDL_FULLSCREEN;

   sdl->g_win = SDL_SetVideoMode(width, height, 0, SDL_OPENGL | fsflag);


   if (!sdl->g_win)
      goto error;
   sdl->g_full = fullscreen;
   sdl->g_width = width;
   sdl->g_height = height;

   return 1;

error:
   RARCH_WARN("[SDL_GL]: Failed to set video mode: %s\n", SDL_GetError());
   return 0;
}
