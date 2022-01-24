#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  void gfx_ctx_sdl_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_MAJOR_VERSION ; 
 int /*<<< orphan*/  SDL_MINOR_VERSION ; 
 int /*<<< orphan*/  SDL_PATCHLEVEL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static void *FUNC10(video_frame_info_t *video_info, void *video_driver)
{
   gfx_ctx_sdl_data_t *sdl = (gfx_ctx_sdl_data_t*)
      FUNC7(1, sizeof(gfx_ctx_sdl_data_t));

   if (!sdl)
      return NULL;

#ifdef HAVE_X11
   XInitThreads();
#endif

   if (FUNC5(0) == 0)
   {
      if (FUNC3(SDL_INIT_VIDEO) < 0)
         goto error;
   }
   else if (FUNC4(SDL_INIT_VIDEO) < 0)
      goto error;

   FUNC0("[SDL_GL] SDL %i.%i.%i gfx context driver initialized.\n",
           SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_PATCHLEVEL);

   return sdl;

error:
   FUNC1("[SDL_GL]: Failed to initialize SDL gfx context driver: %s\n",
              FUNC2());

   FUNC9(sdl);

   if (sdl)
      FUNC8(sdl);

   return NULL;
}