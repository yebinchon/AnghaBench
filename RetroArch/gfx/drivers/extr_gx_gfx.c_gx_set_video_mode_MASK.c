#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_16__ {unsigned int video_viwidth; int menu_rgui_aspect_ratio; } ;
struct TYPE_14__ {scalar_t__ video_vfilter; } ;
struct TYPE_17__ {TYPE_3__ uints; TYPE_1__ bools; } ;
typedef  TYPE_4__ settings_t ;
struct TYPE_15__ {unsigned int full_width; unsigned int full_height; } ;
struct TYPE_18__ {int double_strike; int should_resize; int /*<<< orphan*/ * framebuf; TYPE_2__ vp; } ;
typedef  TYPE_5__ gx_video_t ;
typedef  int /*<<< orphan*/  f32 ;
struct TYPE_21__ {int viTVMode; unsigned int fbWidth; int efbHeight; int xfbHeight; unsigned int viWidth; unsigned int viHeight; int viXOrigin; int viYOrigin; int** sample_pattern; int* vfilter; void* field_rendering; void* aa; int /*<<< orphan*/  xfbMode; } ;
struct TYPE_20__ {int member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_19__ {unsigned int fbWidth; unsigned int xfbHeight; } ;
typedef  TYPE_6__ GXRModeObj ;
typedef  TYPE_7__ GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
#define  CONF_VIDEO_MPAL 136 
#define  CONF_VIDEO_PAL 135 
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 void* GX_FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 float FUNC4 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  GX_MAX_Z24 ; 
 int /*<<< orphan*/  GX_PF_RGB8_Z24 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  GX_ZC_LINEAR ; 
 int FUNC14 (unsigned int,int) ; 
 int /*<<< orphan*/  RARCH_DRIVER_CTL_SET_REFRESH_RATE ; 
 int /*<<< orphan*/  FUNC15 (char*,unsigned int,int,char*) ; 
#define  RGUI_ASPECT_RATIO_16_10 134 
#define  RGUI_ASPECT_RATIO_16_10_CENTRE 133 
#define  RGUI_ASPECT_RATIO_16_9 132 
#define  RGUI_ASPECT_RATIO_16_9_CENTRE 131 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 unsigned int FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*) ; 
 int FUNC22 () ; 
 scalar_t__ FUNC23 (unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 () ; 
#define  VI_EURGB60 130 
 unsigned int VI_INTERLACE ; 
 int VI_MAX_HEIGHT_EURGB60 ; 
 int VI_MAX_HEIGHT_MPAL ; 
 int VI_MAX_HEIGHT_NTSC ; 
 int VI_MAX_HEIGHT_PAL ; 
 unsigned int VI_MAX_WIDTH_EURGB60 ; 
 unsigned int VI_MAX_WIDTH_MPAL ; 
 unsigned int VI_MAX_WIDTH_NTSC ; 
 unsigned int VI_MAX_WIDTH_PAL ; 
#define  VI_MPAL 129 
 unsigned int VI_NON_INTERLACE ; 
 unsigned int VI_NTSC ; 
#define  VI_PAL 128 
 unsigned int VI_PROGRESSIVE ; 
 int FUNC28 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  VI_XFBMODE_DF ; 
 int /*<<< orphan*/  VI_XFBMODE_SF ; 
 TYPE_4__* FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,float*) ; 
 scalar_t__ g_current_framebuf ; 
 int g_draw_done ; 
 scalar_t__ FUNC31 (int) ; 
 scalar_t__ FUNC32 (int) ; 
 TYPE_8__ gx_mode ; 
 scalar_t__ gx_system_xOrigin ; 
 unsigned int gx_used_system_xOrigin ; 
 int gx_xOrigin ; 
 int gx_xOriginNeg ; 
 int gx_xOriginPos ; 
 int gx_yOrigin ; 
 int gx_yOriginNeg ; 
 int gx_yOriginPos ; 
 int max_height ; 
 int /*<<< orphan*/  FUNC33 (size_t) ; 
 int /*<<< orphan*/  FUNC34 (unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (unsigned int) ; 
 int /*<<< orphan*/ * retrace_callback ; 

__attribute__((used)) static void FUNC36(void *data, unsigned fbWidth, unsigned lines,
      bool fullscreen)
{
   int tmpOrigin;
   float refresh_rate;
   bool progressive;
   unsigned modetype, viHeightMultiplier, viWidth, tvmode,
            max_width, i;
   size_t new_fb_pitch    = 0;
   unsigned new_fb_width  = 0;
   unsigned new_fb_height = 0;
   float y_scale          = 0.0f;
   uint16_t xfbWidth      = 0;
   uint16_t xfbHeight     = 0;
   gx_video_t *gx         = (gx_video_t*)data;
   settings_t *settings   = FUNC29();

   /* stop vsync callback */
   FUNC26(NULL);
   g_draw_done = false;
   /* wait for next even field */
   /* this prevents screen artifacts when switching
    * between interlaced & non-interlaced modes */
   do FUNC27();
   while (!FUNC20());

   FUNC24(true);
   FUNC18();
   viHeightMultiplier = 1;
   viWidth            = settings->uints.video_viwidth;

#if defined(HW_RVL)
   progressive = CONF_GetProgressiveScan() > 0 && VIDEO_HaveComponentCable();

   switch (CONF_GetVideo())
   {
      case CONF_VIDEO_PAL:
         if (CONF_GetEuRGB60() > 0)
            tvmode = VI_EURGB60;
         else
            tvmode = VI_PAL;
         break;
      case CONF_VIDEO_MPAL:
         tvmode = VI_MPAL;
         break;
      default:
         tvmode = VI_NTSC;
         break;
   }
#else
   progressive = FUNC22();
   tvmode = FUNC19();
#endif

   switch (tvmode)
   {
      case VI_PAL:
         max_width = VI_MAX_WIDTH_PAL;
         max_height = VI_MAX_HEIGHT_PAL;
         break;
      case VI_MPAL:
         max_width = VI_MAX_WIDTH_MPAL;
         max_height = VI_MAX_HEIGHT_MPAL;
         break;
      case VI_EURGB60:
         max_width = VI_MAX_WIDTH_EURGB60;
         max_height = VI_MAX_HEIGHT_EURGB60;
         break;
      default:
         tvmode = VI_NTSC;
         max_width = VI_MAX_WIDTH_NTSC;
         max_height = VI_MAX_HEIGHT_NTSC;
         break;
   }

   if (lines == 0 || fbWidth == 0)
   {
      GXRModeObj tmp_mode;
      FUNC21(&tmp_mode);
      fbWidth = tmp_mode.fbWidth;
      lines = tmp_mode.xfbHeight;
   }

   if (lines <= max_height / 2)
   {
      modetype = VI_NON_INTERLACE;
      viHeightMultiplier = 2;
   }
   else
   {
      modetype = progressive ? VI_PROGRESSIVE : VI_INTERLACE;
   }

   if (lines > max_height)
      lines = max_height;

   if (fbWidth > max_width)
      fbWidth = max_width;

   gx_mode.viTVMode     = FUNC28(tvmode, modetype);
   gx_mode.fbWidth      = fbWidth;
   gx_mode.efbHeight    = FUNC14(lines, 480);

   if (modetype == VI_NON_INTERLACE && lines > max_height / 2)
      gx_mode.xfbHeight = max_height / 2;
   else if (modetype != VI_NON_INTERLACE && lines > max_height)
      gx_mode.xfbHeight = max_height;
   else
      gx_mode.xfbHeight = lines;

   gx_mode.viWidth      = viWidth;
   gx_mode.viHeight     = gx_mode.xfbHeight * viHeightMultiplier;

   gx_used_system_xOrigin = gx_system_xOrigin;
   if(gx_used_system_xOrigin > 0)
   {
      while(viWidth + gx_used_system_xOrigin > 720) gx_used_system_xOrigin--;
   }
   else if(gx_used_system_xOrigin < 0)
   {
      while(viWidth + gx_used_system_xOrigin > 720) gx_used_system_xOrigin++;
   }

   tmpOrigin = (max_width - gx_mode.viWidth) / 2;

   if(gx_system_xOrigin > 0)
   {
      while(!FUNC31(tmpOrigin)) tmpOrigin--;
   }
   else if(gx_system_xOrigin < 0)
   {
      while(!FUNC31(tmpOrigin)) tmpOrigin++;
   }

   gx_mode.viXOrigin = gx_xOrigin = tmpOrigin;
   gx_mode.viYOrigin = gx_yOrigin =
      (max_height - gx_mode.viHeight) / (2 * viHeightMultiplier);

   gx_xOriginNeg = 0, gx_xOriginPos = 0;
   while(FUNC31(gx_mode.viXOrigin+(gx_xOriginNeg-1))) gx_xOriginNeg--;
   while(FUNC31(gx_mode.viXOrigin+(gx_xOriginPos+1))) gx_xOriginPos++;
   gx_yOriginNeg = 0, gx_yOriginPos = 0;
   while(FUNC32(gx_mode.viYOrigin+(gx_yOriginNeg-1))) gx_yOriginNeg--;
   while(FUNC32(gx_mode.viYOrigin+(gx_yOriginPos+1))) gx_yOriginPos++;

   gx_mode.xfbMode = modetype == VI_INTERLACE ? VI_XFBMODE_DF : VI_XFBMODE_SF;
   gx_mode.field_rendering = GX_FALSE;
   gx_mode.aa = GX_FALSE;

   for (i = 0; i < 12; i++)
      gx_mode.sample_pattern[i][0] = gx_mode.sample_pattern[i][1] = 6;

   if (modetype != VI_NON_INTERLACE && settings->bools.video_vfilter)
   {
      gx_mode.vfilter[0] = 8;
      gx_mode.vfilter[1] = 8;
      gx_mode.vfilter[2] = 10;
      gx_mode.vfilter[3] = 12;
      gx_mode.vfilter[4] = 10;
      gx_mode.vfilter[5] = 8;
      gx_mode.vfilter[6] = 8;
   }
   else
   {
      gx_mode.vfilter[0] = 0;
      gx_mode.vfilter[1] = 0;
      gx_mode.vfilter[2] = 21;
      gx_mode.vfilter[3] = 22;
      gx_mode.vfilter[4] = 21;
      gx_mode.vfilter[5] = 0;
      gx_mode.vfilter[6] = 0;
   }

   gx->vp.full_width = gx_mode.fbWidth;
   gx->vp.full_height = gx_mode.xfbHeight;
   gx->double_strike = (modetype == VI_NON_INTERLACE);
   gx->should_resize = true;

   /* Calculate menu dimensions
    * > Height is set as large as possible, limited to
    *   maximum of 240 (standard RGUI framebuffer height) */
   new_fb_height  = (gx_mode.efbHeight / (gx->double_strike ? 1 : 2)) & ~3;
   if (new_fb_height > 240)
      new_fb_height = 240;
   /* > Width is dertermined by current RGUI aspect ratio
    *   (note that width is in principal limited by hardware
    *    constraints to 640, but we impose a lower limit of
    *    424 since this is the nearest to the RGUI 'standard'
    *    for 16:9 aspect ratios which is supported by the Wii
    *    - i.e. last two bits of value must be zero, so 426->424) */
   switch (settings->uints.menu_rgui_aspect_ratio)
   {
      case RGUI_ASPECT_RATIO_16_9:
      case RGUI_ASPECT_RATIO_16_9_CENTRE:
         if (new_fb_height == 240)
            new_fb_width = 424;
         else
            new_fb_width = (unsigned)((16.0f / 9.0f) * (float)new_fb_height) & ~3;
         break;
      case RGUI_ASPECT_RATIO_16_10:
      case RGUI_ASPECT_RATIO_16_10_CENTRE:
         if (new_fb_height == 240)
            new_fb_width = 384;
         else
            new_fb_width = (unsigned)((16.0f / 10.0f) * (float)new_fb_height) & ~3;
         break;
      default:
         /* 4:3 */
         if (new_fb_height == 240)
            new_fb_width = 320;
         else
            new_fb_width = (unsigned)((4.0f / 3.0f) * (float)new_fb_height) & ~3;
         break;
   }
   if (new_fb_width > 424)
      new_fb_width = 424;

   new_fb_pitch = new_fb_width * 2;

   FUNC35(new_fb_width);
   FUNC34(new_fb_height);
   FUNC33(new_fb_pitch);

   FUNC13(0, 0, gx_mode.fbWidth, gx_mode.efbHeight, 0, 1, 1);
   FUNC9(0, 0, gx_mode.fbWidth, gx_mode.efbHeight);

   y_scale   = FUNC4(gx_mode.efbHeight, gx_mode.xfbHeight);
   xfbWidth  = FUNC23(gx_mode.fbWidth);
   xfbHeight = FUNC10((f32)y_scale);
   FUNC8((u16)xfbWidth, (u16)xfbHeight);

   FUNC7(gx_mode.aa, gx_mode.sample_pattern,
         GX_TRUE, gx_mode.vfilter);
   GXColor color = { 0, 0, 0, 0xff };
   FUNC6(color, GX_MAX_Z24);
   FUNC11(gx_mode.field_rendering,
         (gx_mode.viHeight == 2 * gx_mode.xfbHeight) ? GX_ENABLE : GX_DISABLE);
   FUNC12(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
   FUNC5();
   FUNC3();

   /* Now apply all the configuration to the screen */
   FUNC17(&gx_mode);
   FUNC16(&gx_mode, gx->framebuf[0], COLOR_BLACK);
   FUNC16(&gx_mode, gx->framebuf[1], COLOR_BLACK);
   FUNC25(gx->framebuf[0]);
   g_current_framebuf = 0;
   /* re-activate the Vsync callback */
   FUNC26(retrace_callback);
   FUNC24(false);
   FUNC18();
   FUNC27();

   FUNC15("[GX]: Resolution: %dx%d (%s)\n", gx_mode.fbWidth,
         gx_mode.efbHeight, (gx_mode.viTVMode & 3) == VI_INTERLACE
         ? "interlaced" : "progressive");

   if (tvmode == VI_PAL)
   {
      refresh_rate = 50.0f;
      if (modetype == VI_NON_INTERLACE)
         refresh_rate = 50.0801f;
   }
   else
   {
      refresh_rate = 59.94f;
      if (modetype == VI_NON_INTERLACE)
         refresh_rate = 59.8261f;
   }

   FUNC30(RARCH_DRIVER_CTL_SET_REFRESH_RATE, &refresh_rate);
}