#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef  TYPE_2__ sdl_input_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) () ;} ;
typedef  int /*<<< orphan*/  SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_FIRSTEVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_LASTEVENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *data)
{
#ifndef HAVE_SDL2
   SDL_Event event;
#endif
   sdl_input_t *sdl = (sdl_input_t*)data;

   if (!data)
      return;

   /* Flush out all pending events. */
#ifdef HAVE_SDL2
   SDL_FlushEvents(SDL_FIRSTEVENT, SDL_LASTEVENT);
#else
   while (FUNC1(&event));
#endif

   if (sdl->joypad)
      sdl->joypad->destroy();

   FUNC2(data);
}