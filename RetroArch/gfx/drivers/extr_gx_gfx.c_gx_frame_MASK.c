#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ fps_show; } ;
typedef  TYPE_3__ video_frame_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_16__ {scalar_t__ video_overscan_correction_top; scalar_t__ video_overscan_correction_bottom; } ;
struct TYPE_19__ {TYPE_1__ uints; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  mem2_txt ;
typedef  int /*<<< orphan*/  mem1_txt ;
struct TYPE_17__ {int full_height; } ;
struct TYPE_20__ {scalar_t__ overscan_correction_top; scalar_t__ overscan_correction_bottom; int should_resize; void const* menu_data; int /*<<< orphan*/ * framebuf; scalar_t__ double_strike; TYPE_2__ vp; scalar_t__ menu_texture_enable; scalar_t__ overlay_enable; scalar_t__ rgb32; } ;
typedef  TYPE_5__ gx_video_t ;
struct TYPE_21__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  data; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FONT_HEIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_PNMTX0 ; 
 int /*<<< orphan*/  GX_PNMTX1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TRUE ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int SYSMEM1_SIZE ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (void const*,int /*<<< orphan*/ ,unsigned int,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC18 (void const*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (void const*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  display_list ; 
 int /*<<< orphan*/  display_list_size ; 
 int g_current_framebuf ; 
 int g_draw_done ; 
 TYPE_13__ g_tex ; 
 int /*<<< orphan*/  g_video_cond ; 
 scalar_t__ g_vsync ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,unsigned int,unsigned int,char const*) ; 
 int FUNC21 () ; 
 int FUNC22 () ; 
 unsigned int gx_old_height ; 
 unsigned int gx_old_width ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC25 (void*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int*,unsigned int*,size_t*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 TYPE_6__ menu_tex ; 
 scalar_t__ referenceRetraceCount ; 
 scalar_t__ retraceCount ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,int,int) ; 

__attribute__((used)) static bool FUNC29(void *data, const void *frame,
      unsigned width, unsigned height,
      uint64_t frame_count, unsigned pitch,
      const char *msg,
      video_frame_info_t *video_info)
{
   char fps_text_buf[128];
   settings_t               *settings = FUNC16();
   gx_video_t *gx                     = (gx_video_t*)data;
   u8                       clear_efb = GX_FALSE;
   uint32_t level                     = 0;

   fps_text_buf[0]                    = '\0';

   if(!gx || (!frame && !gx->menu_texture_enable) || !settings)
      return true;

   if (!frame)
      width = height = 4; /* draw a black square in the background */

   if ((gx->overscan_correction_top != settings->uints.video_overscan_correction_top) ||
       (gx->overscan_correction_bottom != settings->uints.video_overscan_correction_bottom))
   {
      gx->overscan_correction_top = settings->uints.video_overscan_correction_top;
      gx->overscan_correction_bottom = settings->uints.video_overscan_correction_bottom;
      gx->should_resize = true;
   }

   if(gx->should_resize)
   {
      FUNC24(gx, settings);
      clear_efb = GX_TRUE;
   }

   while (((g_vsync || gx->menu_texture_enable)) && !g_draw_done)
      FUNC9(g_video_cond);

   width  = FUNC8(g_tex.width, width);
   height = FUNC8(g_tex.height, height);

   if (width != gx_old_width || height != gx_old_height)
   {
      FUNC25(data, width, height);
      gx_old_width = width;
      gx_old_height = height;
   }

   g_draw_done = false;
   g_current_framebuf ^= 1;

   if (frame)
   {
      if (gx->rgb32)
         FUNC19(frame, g_tex.data, width, height, pitch);
      else if (gx->menu_texture_enable)
         FUNC18(frame, g_tex.data, width, height, pitch);
      else
         FUNC17(frame, g_tex.data, width, height, pitch);
      FUNC0(g_tex.data, height * (width << (gx->rgb32 ? 2 : 1)));
   }

   if (gx->menu_texture_enable && gx->menu_data)
   {
      size_t fb_pitch;
      unsigned fb_width, fb_height;

      FUNC26(&fb_width, &fb_height,
            &fb_pitch);

      FUNC17(
            gx->menu_data,
            menu_tex.data,
            fb_width,
            fb_height,
            fb_pitch);
      FUNC0(
            menu_tex.data,
            fb_width * fb_pitch);
   }

#ifdef HAVE_MENU
   menu_driver_frame(video_info);
#endif

   FUNC5();

   FUNC7(GX_PNMTX0);
   FUNC6(&g_tex.obj, GX_TEXMAP0);
   FUNC1(display_list, display_list_size);

   if (gx->menu_texture_enable)
   {
      FUNC7(GX_PNMTX1);
      FUNC6(&menu_tex.obj, GX_TEXMAP0);
      FUNC1(display_list, display_list_size);
   }

#ifdef HAVE_OVERLAY
   if (gx->overlay_enable)
      gx_render_overlay(gx);
#endif

   FUNC14(level);
   if (referenceRetraceCount > retraceCount) {
      if(g_vsync) {
         FUNC13();
      }
   }
   referenceRetraceCount = retraceCount;
   FUNC15(level);

   FUNC3();

   if (video_info->fps_show)
   {
      char mem1_txt[128];
      char mem2_txt[128];
      unsigned x         = 15;
      unsigned y         = 35;

      mem1_txt[0] = mem2_txt[0] = '\0';

      (void)mem2_txt;

      FUNC20(gx, x, y, fps_text_buf);
      y += FONT_HEIGHT * (gx->double_strike ? 1 : 2);
      FUNC28(mem1_txt, sizeof(mem1_txt), "MEM1: %8d / %8d",
            SYSMEM1_SIZE - FUNC10(), SYSMEM1_SIZE);
      FUNC20(gx, x, y, mem1_txt);
#ifdef HW_RVL
      y += FONT_HEIGHT * (gx->double_strike ? 1 : 2);
      snprintf(mem2_txt, sizeof(mem2_txt), "MEM2: %8d / %8d",
            gx_mem2_used(), gx_mem2_total());
      gx_blit_line(gx, x, y, mem2_txt);
#endif
   }

   if (msg && !gx->menu_texture_enable)
   {
      unsigned x = 7 * (gx->double_strike ? 1 : 2);
      unsigned y = gx->vp.full_height - (35 * (gx->double_strike ? 1 : 2));

      FUNC20(gx, x, y, msg);
      clear_efb = GX_TRUE;
   }

   FUNC2(gx->framebuf[g_current_framebuf], clear_efb);
   FUNC4();
   FUNC12(gx->framebuf[g_current_framebuf]);
   FUNC11();

   FUNC14(level);
   ++referenceRetraceCount;
   FUNC15(level);

   return true;
}