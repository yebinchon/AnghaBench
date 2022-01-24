#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int quitting; int should_resize; } ;
typedef  TYPE_2__ sdl2_video_t ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
struct TYPE_8__ {int type; TYPE_1__ window; } ;
typedef  TYPE_3__ SDL_Event ;

/* Variables and functions */
 int /*<<< orphan*/  SDL_GETEVENT ; 
 scalar_t__ FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  SDL_QUIT 129 
#define  SDL_WINDOWEVENT 128 
 int /*<<< orphan*/  SDL_WINDOWEVENT_RESIZED ; 

__attribute__((used)) static void FUNC2(sdl2_video_t *vid)
{
   SDL_Event event;

   FUNC1();
   while (FUNC0(&event, 1, SDL_GETEVENT, SDL_QUIT, SDL_WINDOWEVENT) > 0)
   {
      switch (event.type)
      {
         case SDL_QUIT:
            vid->quitting = true;
            break;

         case SDL_WINDOWEVENT:
            if (event.window.event == SDL_WINDOWEVENT_RESIZED)
               vid->should_resize = true;
            break;

         default:
            break;
      }
   }
}