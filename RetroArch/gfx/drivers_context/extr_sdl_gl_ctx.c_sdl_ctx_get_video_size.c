
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int video_monitor_index; } ;
struct TYPE_10__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {unsigned int g_width; unsigned int g_height; int g_win; } ;
typedef TYPE_3__ gfx_ctx_sdl_data_t ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_12__ {unsigned int w; unsigned int h; int member_0; } ;
typedef TYPE_4__ SDL_Rect ;
typedef TYPE_5__ SDL_DisplayMode ;


 int RARCH_WARN (char*,int,...) ;
 int SDL_FULLSCREEN ;
 scalar_t__ SDL_GetCurrentDisplayMode (int,TYPE_5__*) ;
 int SDL_GetError () ;
 int SDL_HWSURFACE ;
 TYPE_4__** SDL_ListModes (int *,int) ;
 TYPE_2__* config_get_ptr () ;

__attribute__((used)) static void sdl_ctx_get_video_size(void *data,
      unsigned *width, unsigned *height)
{
   settings_t *settings = config_get_ptr();
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)data;

   if (!sdl)
      return;

   *width = sdl->g_width;
   *height = sdl->g_height;

   if (!sdl->g_win)
   {
      SDL_Rect **modes = SDL_ListModes(((void*)0), SDL_FULLSCREEN|SDL_HWSURFACE);
      SDL_Rect mode = {0};

      if (!modes)
         RARCH_WARN("[SDL_GL]: Failed to detect available video modes: %s\n",
                    SDL_GetError());
      else if (*modes)
         mode = **modes;


      *width = mode.w;
      *height = mode.h;
   }
}
