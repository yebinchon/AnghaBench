#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  g_win; } ;
typedef  TYPE_1__ gfx_ctx_sdl_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *data, void *data2)
{
#ifdef HAVE_SDL2
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)data;
   if (sdl)
      SDL_GL_SwapWindow(sdl->g_win);
#else
   FUNC0();
#endif
}