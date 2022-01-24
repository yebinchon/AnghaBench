#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int video_monitor_index; } ;
struct TYPE_10__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_11__ {unsigned int g_width; unsigned int g_height; int /*<<< orphan*/  g_win; } ;
typedef  TYPE_3__ gfx_ctx_sdl_data_t ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {unsigned int w; unsigned int h; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ SDL_Rect ;
typedef  TYPE_5__ SDL_DisplayMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int SDL_FULLSCREEN ; 
 scalar_t__ FUNC1 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int SDL_HWSURFACE ; 
 TYPE_4__** FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *data,
      unsigned *width, unsigned *height)
{
   settings_t    *settings = FUNC4();
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)data;

   if (!sdl)
      return;

   *width  = sdl->g_width;
   *height = sdl->g_height;

   if (!sdl->g_win)
   {
#ifdef HAVE_SDL2
      SDL_DisplayMode mode = {0};
      int i = settings->uints.video_monitor_index;

      if (SDL_GetCurrentDisplayMode(i, &mode) < 0)
         RARCH_WARN("[SDL_GL]: Failed to get display #%i mode: %s\n", i,
                    SDL_GetError());
#else
      SDL_Rect **modes = FUNC3(NULL, SDL_FULLSCREEN|SDL_HWSURFACE);
      SDL_Rect mode = {0};

      if (!modes)
         FUNC0("[SDL_GL]: Failed to detect available video modes: %s\n",
                    FUNC2());
      else if (*modes)
         mode = **modes;
#endif

      *width  = mode.w;
      *height = mode.h;
   }
}