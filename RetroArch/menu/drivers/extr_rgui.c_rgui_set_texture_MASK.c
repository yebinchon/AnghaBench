#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct video_viewport {unsigned int width; unsigned int height; } ;
struct TYPE_6__ {unsigned int menu_rgui_internal_upscale_level; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_9__ {int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {unsigned int width; unsigned int height; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 unsigned int RGUI_UPSCALE_AUTO ; 
 unsigned int RGUI_UPSCALE_NONE ; 
 scalar_t__ FUNC0 (unsigned int,int) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_4__ rgui_frame_buf ; 
 TYPE_3__ rgui_upscale_buf ; 
 int /*<<< orphan*/  FUNC6 (struct video_viewport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,unsigned int,unsigned int,float) ; 

__attribute__((used)) static void FUNC8(void)
{
   size_t fb_pitch;
   unsigned fb_width, fb_height;
   settings_t *settings = FUNC1();

   if (!FUNC4())
      return;

   FUNC3(&fb_width, &fb_height,
         &fb_pitch);

   FUNC5();

   if (settings->uints.menu_rgui_internal_upscale_level == RGUI_UPSCALE_NONE)
   {
      FUNC7(rgui_frame_buf.data,
         false, fb_width, fb_height, 1.0f);
   }
   else
   {
      /* Get viewport dimensions */
      struct video_viewport vp;
      FUNC6(&vp);
      
      /* If viewport is currently the same size (or smaller)
       * than the menu framebuffer, no scaling is required */
      if ((vp.width <= fb_width) && (vp.height <= fb_height))
      {
         FUNC7(rgui_frame_buf.data,
            false, fb_width, fb_height, 1.0f);
      }
      else
      {
         unsigned out_width;
         unsigned out_height;
         uint32_t x_ratio, y_ratio;
         unsigned x_src, y_src;
         unsigned x_dst, y_dst;
         
         /* Determine output size */
         if (settings->uints.menu_rgui_internal_upscale_level == RGUI_UPSCALE_AUTO)
         {
            out_width = ((vp.width / fb_width) + 1) * fb_width;
            out_height = ((vp.height / fb_height) + 1) * fb_height;
         }
         else
         {
            out_width = settings->uints.menu_rgui_internal_upscale_level * fb_width;
            out_height = settings->uints.menu_rgui_internal_upscale_level * fb_height;
         }
         
         /* Allocate upscaling buffer, if required */
         if ((rgui_upscale_buf.width != out_width) || (rgui_upscale_buf.height != out_height) || !rgui_upscale_buf.data)
         {
            rgui_upscale_buf.width = out_width;
            rgui_upscale_buf.height = out_height;
            
            if (rgui_upscale_buf.data)
            {
               FUNC2(rgui_upscale_buf.data);
               rgui_upscale_buf.data = NULL;
            }
            
            rgui_upscale_buf.data = (uint16_t*)FUNC0(out_width * out_height, sizeof(uint16_t));
            if (!rgui_upscale_buf.data)
            {
               /* Uh oh... This could mean we don't have enough
                * memory, so disable upscaling and draw the usual
                * framebuffer... */
               settings->uints.menu_rgui_internal_upscale_level = RGUI_UPSCALE_NONE;
               FUNC7(rgui_frame_buf.data,
                  false, fb_width, fb_height, 1.0f);
               return;
            }
         }
         
         /* Perform nearest neighbour upscaling
          * NB: We're duplicating code here, but trying to handle
          * this with a polymorphic function is too much of a drag... */
         x_ratio = ((fb_width  << 16) / out_width);
         y_ratio = ((fb_height << 16) / out_height);

         for (y_dst = 0; y_dst < out_height; y_dst++)
         {
            y_src = (y_dst * y_ratio) >> 16;
            for (x_dst = 0; x_dst < out_width; x_dst++)
            {
               x_src = (x_dst * x_ratio) >> 16;
               rgui_upscale_buf.data[(y_dst * out_width) + x_dst] = rgui_frame_buf.data[(y_src * fb_width) + x_src];
            }
         }
         
         /* Draw upscaled texture */
         FUNC7(rgui_upscale_buf.data,
            false, out_width, out_height, 1.0f);
      }
   }
}