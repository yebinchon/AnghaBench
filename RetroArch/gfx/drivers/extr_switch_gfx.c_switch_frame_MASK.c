#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  osd_stat_params; int /*<<< orphan*/  stat_text; scalar_t__ statistics_show; } ;
typedef  TYPE_2__ video_frame_info_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_13__ {unsigned int in_width; unsigned int in_height; unsigned int in_stride; int out_width; int out_height; int out_stride; int /*<<< orphan*/  scaler_type; int /*<<< orphan*/  out_fmt; int /*<<< orphan*/  in_fmt; } ;
struct TYPE_10__ {void const* pixels; int tgth; int tgtw; TYPE_5__ scaler; scalar_t__ fullscreen; scalar_t__ enable; } ;
struct TYPE_12__ {int* image; unsigned int last_width; unsigned int last_height; int /*<<< orphan*/  surface; TYPE_1__ menu_texture; TYPE_5__ scaler; scalar_t__ rgb32; } ;
typedef  TYPE_3__ switch_video_t ;
struct font_params {int dummy; } ;
typedef  scalar_t__ result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ RESULT_OK ; 
 int /*<<< orphan*/  SCALER_FMT_ABGR8888 ; 
 int /*<<< orphan*/  SCALER_FMT_ARGB8888 ; 
 int /*<<< orphan*/  SCALER_FMT_RGB565 ; 
 int /*<<< orphan*/  SCALER_TYPE_POINT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct font_params const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int*,void const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 () ; 

__attribute__((used)) static bool FUNC15(void *data, const void *frame,
      unsigned width, unsigned height,
      uint64_t frame_count, unsigned pitch,
      const char *msg, video_frame_info_t *video_info)
{
	static uint64_t last_frame = 0;

   unsigned x, y;
   result_t r;
   int tgtw, tgth, centerx, centery;
   uint32_t *out_buffer   = NULL;
   switch_video_t *sw     = data;
   int xsf                = 1280 / width;
   int ysf                = 720  / height;
   int sf                 = xsf;

   if (ysf < sf)
      sf = ysf;

   tgtw                   = width * sf;
   tgth                   = height * sf;
   centerx                = (1280-tgtw)/2;
   centery                = (720-tgth)/2;

   /* clear image to black */
   for(y = 0; y < 720; y++)
   {
      for(x = 0; x < 1280; x++)
         sw->image[y*1280+x] = 0xFF000000;
   }

   if(width > 0 && height > 0)
   {
	   if(sw->last_width != width ||
	      sw->last_height != height)
      {
         FUNC8(&sw->scaler);

         sw->scaler.in_width    = width;
         sw->scaler.in_height   = height;
         sw->scaler.in_stride   = pitch;
         sw->scaler.in_fmt      = sw->rgb32 ? SCALER_FMT_ARGB8888 : SCALER_FMT_RGB565;

         sw->scaler.out_width   = tgtw;
         sw->scaler.out_height  = tgth;
         sw->scaler.out_stride  = 1280 * sizeof(uint32_t);
         sw->scaler.out_fmt     = SCALER_FMT_ABGR8888;

         sw->scaler.scaler_type = SCALER_TYPE_POINT;

         if(!FUNC7(&sw->scaler))
         {
            FUNC0("failed to generate scaler for main image\n");
            return false;
         }

         sw->last_width         = width;
         sw->last_height        = height;
      }

	   FUNC9(&sw->scaler, sw->image + (centery * 1280) + centerx, frame);
   }

#if defined(HAVE_MENU)
   if (sw->menu_texture.enable)
	{
		menu_driver_frame(video_info);

		if (sw->menu_texture.pixels)
		{
#if 0
			if (sw->menu_texture.fullscreen)
         {
#endif
	         scaler_ctx_scale(&sw->menu_texture.scaler, sw->image +
	                          ((720-sw->menu_texture.tgth)/2)*1280 +
	                          ((1280-sw->menu_texture.tgtw)/2), sw->menu_texture.pixels);
#if 0
         }
         else
         {
         }
#endif
		}
	}
   else if (video_info->statistics_show)
   {
      struct font_params *osd_params = (struct font_params*)
         &video_info->osd_stat_params;

      if (osd_params)
         font_driver_render_msg(video_info, NULL, video_info->stat_text,
               (const struct font_params*)&video_info->osd_stat_params);
   }
#endif

#if 0
   if (frame_count > 6000)
   {
      display_finalize();
      exit(0);
   }
#endif

   if (msg && FUNC10(msg) > 0)
      FUNC1("message: %s\n", msg);

   r = FUNC11(&sw->surface, &out_buffer);
   if(r != RESULT_OK)
	   return true; /* just skip the frame */

   r = FUNC13(&sw->surface);
   if(r != RESULT_OK)
	   return true;
   FUNC5(out_buffer, sw->image, 1280, 720, 0, 0);

   r = FUNC12(&sw->surface);

   if (r != RESULT_OK)
      return false;

   last_frame = FUNC14();
   return true;
}