#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * g_win; int /*<<< orphan*/ * g_ctx; } ;
typedef  TYPE_1__ gfx_ctx_sdl_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(gfx_ctx_sdl_data_t *sdl)
{
   if (!sdl)
      return;

#ifdef HAVE_SDL2
   if (sdl->g_ctx)
      SDL_GL_DeleteContext(sdl->g_ctx);

   if (sdl->g_win)
      SDL_DestroyWindow(sdl->g_win);

   sdl->g_ctx = NULL;
#else
   if (sdl->g_win)
      FUNC1(sdl->g_win);
#endif
   sdl->g_win = NULL;

   FUNC3(SDL_INIT_VIDEO);
}