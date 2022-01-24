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
struct TYPE_2__ {scalar_t__ controller; } ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 char const* FUNC0 (unsigned int) ; 
 char const* FUNC1 (unsigned int) ; 
 char const* FUNC2 (unsigned int) ; 
 TYPE_1__* sdl_pads ; 

__attribute__((used)) static const char *FUNC3(unsigned pad)
{
   if (pad >= MAX_USERS)
      return NULL;

#ifdef HAVE_SDL2
   if (sdl_pads[pad].controller)
      return SDL_GameControllerNameForIndex(pad);
   return SDL_JoystickNameForIndex(pad);
#else
   return FUNC1(pad);
#endif
}