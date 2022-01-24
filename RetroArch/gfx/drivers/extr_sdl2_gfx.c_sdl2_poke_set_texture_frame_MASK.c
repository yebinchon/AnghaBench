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
struct TYPE_4__ {int /*<<< orphan*/  pitch; int /*<<< orphan*/  tex; } ;
struct TYPE_5__ {TYPE_1__ menu; } ;
typedef  TYPE_2__ sdl2_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(void *data,
      const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   if (frame)
   {
      sdl2_video_t *vid = (sdl2_video_t*)data;

      FUNC1(vid, true, rgb32, width, height,
            width * (rgb32 ? 4 : 2));

      FUNC0(vid->menu.tex, NULL, frame, vid->menu.pitch);
   }
}