#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ vsync; } ;
struct TYPE_5__ {int /*<<< orphan*/  renderer; int /*<<< orphan*/  window; TYPE_1__ video; } ;
typedef  TYPE_2__ sdl2_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SDL_HINT_OVERRIDE ; 
 int /*<<< orphan*/  SDL_HINT_RENDER_VSYNC ; 
 unsigned int SDL_RENDERER_ACCELERATED ; 
 unsigned int SDL_RENDERER_PRESENTVSYNC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(sdl2_video_t *vid)
{
   unsigned flags = SDL_RENDERER_ACCELERATED;

   if (vid->video.vsync)
      flags |= SDL_RENDERER_PRESENTVSYNC;

   FUNC1();
   FUNC4(SDL_HINT_RENDER_VSYNC,
                           vid->video.vsync ? "1" : "0", SDL_HINT_OVERRIDE);
   vid->renderer = FUNC2(vid->window, -1, flags);

   if (!vid->renderer)
   {
      FUNC0("[SDL2]: Failed to initialize renderer: %s", FUNC3());
      return;
   }

   FUNC5(vid->renderer, 0, 0, 0, 255);
}