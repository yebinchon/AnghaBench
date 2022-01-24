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
struct dispmanx_video {unsigned int menu_width; unsigned int menu_height; unsigned int menu_pitch; int /*<<< orphan*/ * menu_surface; int /*<<< orphan*/  aspect_ratio; int /*<<< orphan*/  menu_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_IMAGE_RGBA16 ; 
 int /*<<< orphan*/  FUNC0 (struct dispmanx_video*,unsigned int,unsigned int,unsigned int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   struct dispmanx_video *_dispvars = data;

   if (!_dispvars->menu_active)
      return;

   /* If menu is active in this frame but our menu surface is NULL, we allocate a new one.*/
   if (_dispvars->menu_surface == NULL)
   {
      _dispvars->menu_width  = width;
      _dispvars->menu_height = height;
      _dispvars->menu_pitch  = width * (rgb32 ? 4 : 2);

      /* Menu surface only needs a page as it will be updated asynchronously. */
      FUNC0(_dispvars,
            width,
            height,
            _dispvars->menu_pitch,
            16,
            VC_IMAGE_RGBA16,
            210,
            _dispvars->aspect_ratio,
            1,
            0,
            &_dispvars->menu_surface);
   }

   /* We update the menu surface if menu is active.
    * This update is asynchronous, yet menu screen update
    * will be synced because main surface updating is synchronous */
   FUNC1(frame, _dispvars->menu_surface);
}