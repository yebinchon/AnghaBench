#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_13__ {int mouse_wu; int mouse_wd; int mouse_wl; int mouse_wr; TYPE_1__* joypad; } ;
typedef  TYPE_5__ sdl_input_t ;
struct TYPE_12__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_10__ {int mod; int /*<<< orphan*/  sym; } ;
struct TYPE_11__ {TYPE_2__ keysym; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_4__ wheel; TYPE_3__ key; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* poll ) () ;} ;
typedef  TYPE_6__ SDL_Event ;

/* Variables and functions */
 int KMOD_ALT ; 
 int KMOD_CAPS ; 
 int KMOD_CTRL ; 
 int KMOD_NUM ; 
 int KMOD_SHIFT ; 
 int /*<<< orphan*/  RETROKMOD_ALT ; 
 int /*<<< orphan*/  RETROKMOD_CAPSLOCK ; 
 int /*<<< orphan*/  RETROKMOD_CTRL ; 
 int /*<<< orphan*/  RETROKMOD_NUMLOCK ; 
 int /*<<< orphan*/  RETROKMOD_SHIFT ; 
 int /*<<< orphan*/  RETRO_DEVICE_KEYBOARD ; 
 int /*<<< orphan*/  SDL_GETEVENT ; 
 scalar_t__ SDL_KEYDOWN ; 
 int /*<<< orphan*/  SDL_KEYEVENTMASK ; 
 scalar_t__ SDL_KEYUP ; 
 scalar_t__ SDL_MOUSEWHEEL ; 
 scalar_t__ FUNC0 (TYPE_6__*,int,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data)
{
   sdl_input_t *sdl = (sdl_input_t*)data;
   SDL_Event event;

   FUNC1();

   if (sdl->joypad)
      sdl->joypad->poll();
   FUNC4(sdl);

#ifdef HAVE_SDL2
   while (SDL_PeepEvents(&event, 1, SDL_GETEVENT, SDL_KEYDOWN, SDL_MOUSEWHEEL) > 0)
#else
   while (FUNC0(&event, 1, SDL_GETEVENT, SDL_KEYEVENTMASK) > 0)
#endif
   {
      if (event.type == SDL_KEYDOWN || event.type == SDL_KEYUP)
      {
         uint16_t mod = 0;
         unsigned code = FUNC3(event.key.keysym.sym);

         if (event.key.keysym.mod & KMOD_SHIFT)
            mod |= RETROKMOD_SHIFT;

         if (event.key.keysym.mod & KMOD_CTRL)
            mod |= RETROKMOD_CTRL;

         if (event.key.keysym.mod & KMOD_ALT)
            mod |= RETROKMOD_ALT;

         if (event.key.keysym.mod & KMOD_NUM)
            mod |= RETROKMOD_NUMLOCK;

         if (event.key.keysym.mod & KMOD_CAPS)
            mod |= RETROKMOD_CAPSLOCK;

         FUNC2(event.type == SDL_KEYDOWN, code, code, mod,
               RETRO_DEVICE_KEYBOARD);
      }
#ifdef HAVE_SDL2
      else if (event.type == SDL_MOUSEWHEEL)
      {
         sdl->mouse_wu = event.wheel.y < 0;
         sdl->mouse_wd = event.wheel.y > 0;
         sdl->mouse_wl = event.wheel.x < 0;
         sdl->mouse_wr = event.wheel.x > 0;
         break;
      }
#endif
   }
}