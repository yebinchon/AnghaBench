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
struct video_viewport {unsigned int full_width; unsigned int full_height; unsigned int x; unsigned int y; unsigned int width; unsigned int height; } ;
struct TYPE_4__ {scalar_t__ video_scale_integer; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 double FUNC1 (float) ; 
 float FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct video_viewport*,unsigned int,unsigned int,float,int) ; 

__attribute__((used)) static void FUNC4(bool keep_aspect,
      struct video_viewport *vp,
      unsigned vp_width, unsigned vp_height)
{
   settings_t *settings = FUNC0();

   vp->full_width       = vp_width;
   vp->full_height      = vp_height;

   if (settings->bools.video_scale_integer)
      FUNC3(vp, vp_width, vp_height,
            FUNC2(), keep_aspect);
   else if (!keep_aspect)
   {
      vp->x      = 0;
      vp->y      = 0;
      vp->width  = vp_width;
      vp->height = vp_height;
   }
   else
   {
      float desired_aspect = FUNC2();
      float device_aspect  = (float)vp_width / vp_height;

      /* If the aspect ratios of screen and desired aspect ratio
       * are sufficiently equal (floating point stuff),
       * assume they are actually equal.
       */
      if (FUNC1(device_aspect - desired_aspect) < 0.0001)
      {
         vp->x       = 0;
         vp->y       = 0;
         vp->width   = vp_width;
         vp->height  = vp_height;
      }
      else if (device_aspect > desired_aspect)
      {
         float delta = (desired_aspect / device_aspect - 1.0) / 2.0 + 0.5;
         vp->x       = vp_width * (0.5 - delta);
         vp->y       = 0;
         vp->width   = 2.0 * vp_width * delta;
         vp->height  = vp_height;
      }
      else
      {
         float delta = (device_aspect / desired_aspect - 1.0) / 2.0 + 0.5;
         vp->x       = 0;
         vp->y       = vp_height * (0.5 - delta);
         vp->width   = vp_width;
         vp->height  = 2.0 * vp_height * delta;
      }
   }
}