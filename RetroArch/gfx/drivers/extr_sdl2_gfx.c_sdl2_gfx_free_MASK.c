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
struct TYPE_5__ {scalar_t__ font_data; TYPE_1__* font_driver; scalar_t__ window; scalar_t__ renderer; } ;
typedef  TYPE_2__ sdl2_video_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(void *data)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   if (!vid)
      return;

   if (vid->renderer)
      FUNC0(vid->renderer);

   if (vid->window)
      FUNC1(vid->window);

   FUNC2(SDL_INIT_VIDEO);

   if (vid->font_data)
      vid->font_driver->free(vid->font_data);

   FUNC3(vid);
}