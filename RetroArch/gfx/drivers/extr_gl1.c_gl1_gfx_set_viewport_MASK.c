#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int height; scalar_t__ aspect_ratio_idx; int custom_vp_x; unsigned int custom_vp_y; unsigned int custom_vp_height; unsigned int custom_vp_width; scalar_t__ scale_integer; } ;
typedef  TYPE_1__ video_frame_info_t ;
struct TYPE_12__ {unsigned int width; unsigned int height; int x; int y; } ;
struct TYPE_10__ {unsigned int vp_out_width; unsigned int vp_out_height; TYPE_4__ vp; scalar_t__ keep_aspect; } ;
typedef  TYPE_2__ gl1_t ;
struct TYPE_11__ {float* aspect; unsigned int width; unsigned int height; } ;
typedef  TYPE_3__ gfx_ctx_aspect_t ;

/* Variables and functions */
 scalar_t__ ASPECT_RATIO_CUSTOM ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  gl1_default_ortho ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 float FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,unsigned int,unsigned int,float,scalar_t__) ; 

void FUNC8(gl1_t *gl1,
      video_frame_info_t *video_info,
      unsigned viewport_width,
      unsigned viewport_height,
      bool force_full, bool allow_rotate)
{
   gfx_ctx_aspect_t aspect_data;
   int x                    = 0;
   int y                    = 0;
   float device_aspect      = (float)viewport_width / viewport_height;
   unsigned height          = video_info->height;

   aspect_data.aspect       = &device_aspect;
   aspect_data.width        = viewport_width;
   aspect_data.height       = viewport_height;

   FUNC5(&aspect_data);

   if (video_info->scale_integer && !force_full)
   {
      FUNC7(&gl1->vp,
            viewport_width, viewport_height,
            FUNC6(), gl1->keep_aspect);
      viewport_width  = gl1->vp.width;
      viewport_height = gl1->vp.height;
   }
   else if (gl1->keep_aspect && !force_full)
   {
      float desired_aspect = FUNC6();

#if defined(HAVE_MENU)
      if (video_info->aspect_ratio_idx == ASPECT_RATIO_CUSTOM)
      {
         /* GL has bottom-left origin viewport. */
         x      = video_info->custom_vp_x;
         y      = height - video_info->custom_vp_y - video_info->custom_vp_height;
         viewport_width  = video_info->custom_vp_width;
         viewport_height = video_info->custom_vp_height;
      }
      else
#endif
      {
         float delta;

         if (FUNC1(device_aspect - desired_aspect) < 0.0001f)
         {
            /* If the aspect ratios of screen and desired aspect
             * ratio are sufficiently equal (floating point stuff),
             * assume they are actually equal.
             */
         }
         else if (device_aspect > desired_aspect)
         {
            delta = (desired_aspect / device_aspect - 1.0f) / 2.0f + 0.5f;
            x     = (int)FUNC4(viewport_width * (0.5f - delta));
            viewport_width = (unsigned)FUNC4(2.0f * viewport_width * delta);
         }
         else
         {
            delta  = (device_aspect / desired_aspect - 1.0f) / 2.0f + 0.5f;
            y      = (int)FUNC4(viewport_height * (0.5f - delta));
            viewport_height = (unsigned)FUNC4(2.0f * viewport_height * delta);
         }
      }

      gl1->vp.x      = x;
      gl1->vp.y      = y;
      gl1->vp.width  = viewport_width;
      gl1->vp.height = viewport_height;
   }
   else
   {
      gl1->vp.x      = gl1->vp.y = 0;
      gl1->vp.width  = viewport_width;
      gl1->vp.height = viewport_height;
   }

#if defined(RARCH_MOBILE)
   /* In portrait mode, we want viewport to gravitate to top of screen. */
   if (device_aspect < 1.0f)
      gl1->vp.y *= 2;
#endif

   FUNC3(gl1->vp.x, gl1->vp.y, gl1->vp.width, gl1->vp.height);
   FUNC2(gl1, &gl1_default_ortho, allow_rotate);

   /* Set last backbuffer viewport. */
   if (!force_full)
   {
      gl1->vp_out_width  = viewport_width;
      gl1->vp_out_height = viewport_height;
   }

#if 0
   RARCH_LOG("Setting viewport @ %ux%u\n", viewport_width, viewport_height);
#endif
}