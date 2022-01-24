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
struct drm_video {float current_aspect; int /*<<< orphan*/  menu_surface; scalar_t__ menu_active; int /*<<< orphan*/  main_surface; } ;
struct TYPE_2__ {float value; } ;

/* Variables and functions */
 TYPE_1__* aspectratio_lut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC2 (void *data, unsigned aspect_ratio_idx)
{
   struct drm_video *_drmvars = data;
   /* Here we obtain the new aspect ratio. */
   float new_aspect = aspectratio_lut[aspect_ratio_idx].value;

   if (_drmvars->current_aspect != new_aspect)
   {
      _drmvars->current_aspect = new_aspect;
      FUNC1(_drmvars->main_surface, new_aspect);
      if (_drmvars->menu_active)
      {
         FUNC1(_drmvars->menu_surface, new_aspect);
         FUNC0(_drmvars->menu_surface);
      }
   }
}