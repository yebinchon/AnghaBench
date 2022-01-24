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
struct TYPE_4__ {int /*<<< orphan*/  which; } ;
struct TYPE_5__ {int type; TYPE_1__ jdevice; } ;
typedef  TYPE_2__ SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_CONTROLLERDEVICEREMAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_GETEVENT ; 
 int /*<<< orphan*/  SDL_JOYAXISMOTION ; 
#define  SDL_JOYDEVICEADDED 129 
#define  SDL_JOYDEVICEREMOVED 128 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
#ifdef HAVE_SDL2
   SDL_Event event;

   SDL_PumpEvents();

   while (SDL_PeepEvents(&event, 1,
            SDL_GETEVENT, SDL_JOYDEVICEADDED, SDL_JOYDEVICEREMOVED) > 0)
   {
      switch (event.type)
      {
         case SDL_JOYDEVICEADDED:
            sdl_pad_connect(event.jdevice.which);
            break;
         case SDL_JOYDEVICEREMOVED:
            sdl_pad_disconnect(event.jdevice.which);
            break;
      }
   }

   SDL_FlushEvents(SDL_JOYAXISMOTION, SDL_CONTROLLERDEVICEREMAPPED);
#else
   FUNC1();
#endif
}