
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u16 ;
struct TYPE_16__ {unsigned int video_viwidth; int menu_rgui_aspect_ratio; } ;
struct TYPE_14__ {scalar_t__ video_vfilter; } ;
struct TYPE_17__ {TYPE_3__ uints; TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_15__ {unsigned int full_width; unsigned int full_height; } ;
struct TYPE_18__ {int double_strike; int should_resize; int * framebuf; TYPE_2__ vp; } ;
typedef TYPE_5__ gx_video_t ;
typedef int f32 ;
struct TYPE_21__ {int viTVMode; unsigned int fbWidth; int efbHeight; int xfbHeight; unsigned int viWidth; unsigned int viHeight; int viXOrigin; int viYOrigin; int** sample_pattern; int* vfilter; void* field_rendering; void* aa; int xfbMode; } ;
struct TYPE_20__ {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_19__ {unsigned int fbWidth; unsigned int xfbHeight; } ;
typedef TYPE_6__ GXRModeObj ;
typedef TYPE_7__ GXColor ;


 int COLOR_BLACK ;
 int CONF_GetEuRGB60 () ;
 scalar_t__ CONF_GetProgressiveScan () ;
 int CONF_GetVideo () ;


 int GX_DISABLE ;
 int GX_ENABLE ;
 void* GX_FALSE ;
 int GX_Flush () ;
 float GX_GetYScaleFactor (int,unsigned int) ;
 int GX_InvalidateTexAll () ;
 int GX_MAX_Z24 ;
 int GX_PF_RGB8_Z24 ;
 int GX_SetCopyClear (TYPE_7__,int ) ;
 int GX_SetCopyFilter (void*,int**,int ,int*) ;
 int GX_SetDispCopyDst (int ,int ) ;
 int GX_SetDispCopySrc (int ,int ,unsigned int,int) ;
 scalar_t__ GX_SetDispCopyYScale (int ) ;
 int GX_SetFieldMode (void*,int ) ;
 int GX_SetPixelFmt (int ,int ) ;
 int GX_SetViewportJitter (int ,int ,unsigned int,int,int ,int,int) ;
 int GX_TRUE ;
 int GX_ZC_LINEAR ;
 int MIN (unsigned int,int) ;
 int RARCH_DRIVER_CTL_SET_REFRESH_RATE ;
 int RARCH_LOG (char*,unsigned int,int,char*) ;




 int VIDEO_ClearFrameBuffer (TYPE_8__*,int ,int ) ;
 int VIDEO_Configure (TYPE_8__*) ;
 int VIDEO_Flush () ;
 unsigned int VIDEO_GetCurrentTvMode () ;
 int VIDEO_GetNextField () ;
 int VIDEO_GetPreferredMode (TYPE_6__*) ;
 int VIDEO_HaveComponentCable () ;
 scalar_t__ VIDEO_PadFramebufferWidth (unsigned int) ;
 int VIDEO_SetBlack (int) ;
 int VIDEO_SetNextFramebuffer (int ) ;
 int VIDEO_SetPostRetraceCallback (int *) ;
 int VIDEO_WaitVSync () ;

 unsigned int VI_INTERLACE ;
 int VI_MAX_HEIGHT_EURGB60 ;
 int VI_MAX_HEIGHT_MPAL ;
 int VI_MAX_HEIGHT_NTSC ;
 int VI_MAX_HEIGHT_PAL ;
 unsigned int VI_MAX_WIDTH_EURGB60 ;
 unsigned int VI_MAX_WIDTH_MPAL ;
 unsigned int VI_MAX_WIDTH_NTSC ;
 unsigned int VI_MAX_WIDTH_PAL ;

 unsigned int VI_NON_INTERLACE ;
 unsigned int VI_NTSC ;

 unsigned int VI_PROGRESSIVE ;
 int VI_TVMODE (unsigned int,unsigned int) ;
 int VI_XFBMODE_DF ;
 int VI_XFBMODE_SF ;
 TYPE_4__* config_get_ptr () ;
 int driver_ctl (int ,float*) ;
 scalar_t__ g_current_framebuf ;
 int g_draw_done ;
 scalar_t__ gx_isValidXOrigin (int) ;
 scalar_t__ gx_isValidYOrigin (int) ;
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
 int menu_display_set_framebuffer_pitch (size_t) ;
 int menu_display_set_height (unsigned int) ;
 int menu_display_set_width (unsigned int) ;
 int * retrace_callback ;

__attribute__((used)) static void gx_set_video_mode(void *data, unsigned fbWidth, unsigned lines,
      bool fullscreen)
{
   int tmpOrigin;
   float refresh_rate;
   bool progressive;
   unsigned modetype, viHeightMultiplier, viWidth, tvmode,
            max_width, i;
   size_t new_fb_pitch = 0;
   unsigned new_fb_width = 0;
   unsigned new_fb_height = 0;
   float y_scale = 0.0f;
   uint16_t xfbWidth = 0;
   uint16_t xfbHeight = 0;
   gx_video_t *gx = (gx_video_t*)data;
   settings_t *settings = config_get_ptr();


   VIDEO_SetPostRetraceCallback(((void*)0));
   g_draw_done = 0;



   do VIDEO_WaitVSync();
   while (!VIDEO_GetNextField());

   VIDEO_SetBlack(1);
   VIDEO_Flush();
   viHeightMultiplier = 1;
   viWidth = settings->uints.video_viwidth;
   progressive = VIDEO_HaveComponentCable();
   tvmode = VIDEO_GetCurrentTvMode();


   switch (tvmode)
   {
      case 128:
         max_width = VI_MAX_WIDTH_PAL;
         max_height = VI_MAX_HEIGHT_PAL;
         break;
      case 129:
         max_width = VI_MAX_WIDTH_MPAL;
         max_height = VI_MAX_HEIGHT_MPAL;
         break;
      case 130:
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
      VIDEO_GetPreferredMode(&tmp_mode);
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

   gx_mode.viTVMode = VI_TVMODE(tvmode, modetype);
   gx_mode.fbWidth = fbWidth;
   gx_mode.efbHeight = MIN(lines, 480);

   if (modetype == VI_NON_INTERLACE && lines > max_height / 2)
      gx_mode.xfbHeight = max_height / 2;
   else if (modetype != VI_NON_INTERLACE && lines > max_height)
      gx_mode.xfbHeight = max_height;
   else
      gx_mode.xfbHeight = lines;

   gx_mode.viWidth = viWidth;
   gx_mode.viHeight = gx_mode.xfbHeight * viHeightMultiplier;

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
      while(!gx_isValidXOrigin(tmpOrigin)) tmpOrigin--;
   }
   else if(gx_system_xOrigin < 0)
   {
      while(!gx_isValidXOrigin(tmpOrigin)) tmpOrigin++;
   }

   gx_mode.viXOrigin = gx_xOrigin = tmpOrigin;
   gx_mode.viYOrigin = gx_yOrigin =
      (max_height - gx_mode.viHeight) / (2 * viHeightMultiplier);

   gx_xOriginNeg = 0, gx_xOriginPos = 0;
   while(gx_isValidXOrigin(gx_mode.viXOrigin+(gx_xOriginNeg-1))) gx_xOriginNeg--;
   while(gx_isValidXOrigin(gx_mode.viXOrigin+(gx_xOriginPos+1))) gx_xOriginPos++;
   gx_yOriginNeg = 0, gx_yOriginPos = 0;
   while(gx_isValidYOrigin(gx_mode.viYOrigin+(gx_yOriginNeg-1))) gx_yOriginNeg--;
   while(gx_isValidYOrigin(gx_mode.viYOrigin+(gx_yOriginPos+1))) gx_yOriginPos++;

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
   gx->should_resize = 1;




   new_fb_height = (gx_mode.efbHeight / (gx->double_strike ? 1 : 2)) & ~3;
   if (new_fb_height > 240)
      new_fb_height = 240;






   switch (settings->uints.menu_rgui_aspect_ratio)
   {
      case 132:
      case 131:
         if (new_fb_height == 240)
            new_fb_width = 424;
         else
            new_fb_width = (unsigned)((16.0f / 9.0f) * (float)new_fb_height) & ~3;
         break;
      case 134:
      case 133:
         if (new_fb_height == 240)
            new_fb_width = 384;
         else
            new_fb_width = (unsigned)((16.0f / 10.0f) * (float)new_fb_height) & ~3;
         break;
      default:

         if (new_fb_height == 240)
            new_fb_width = 320;
         else
            new_fb_width = (unsigned)((4.0f / 3.0f) * (float)new_fb_height) & ~3;
         break;
   }
   if (new_fb_width > 424)
      new_fb_width = 424;

   new_fb_pitch = new_fb_width * 2;

   menu_display_set_width(new_fb_width);
   menu_display_set_height(new_fb_height);
   menu_display_set_framebuffer_pitch(new_fb_pitch);

   GX_SetViewportJitter(0, 0, gx_mode.fbWidth, gx_mode.efbHeight, 0, 1, 1);
   GX_SetDispCopySrc(0, 0, gx_mode.fbWidth, gx_mode.efbHeight);

   y_scale = GX_GetYScaleFactor(gx_mode.efbHeight, gx_mode.xfbHeight);
   xfbWidth = VIDEO_PadFramebufferWidth(gx_mode.fbWidth);
   xfbHeight = GX_SetDispCopyYScale((f32)y_scale);
   GX_SetDispCopyDst((u16)xfbWidth, (u16)xfbHeight);

   GX_SetCopyFilter(gx_mode.aa, gx_mode.sample_pattern,
         GX_TRUE, gx_mode.vfilter);
   GXColor color = { 0, 0, 0, 0xff };
   GX_SetCopyClear(color, GX_MAX_Z24);
   GX_SetFieldMode(gx_mode.field_rendering,
         (gx_mode.viHeight == 2 * gx_mode.xfbHeight) ? GX_ENABLE : GX_DISABLE);
   GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
   GX_InvalidateTexAll();
   GX_Flush();


   VIDEO_Configure(&gx_mode);
   VIDEO_ClearFrameBuffer(&gx_mode, gx->framebuf[0], COLOR_BLACK);
   VIDEO_ClearFrameBuffer(&gx_mode, gx->framebuf[1], COLOR_BLACK);
   VIDEO_SetNextFramebuffer(gx->framebuf[0]);
   g_current_framebuf = 0;

   VIDEO_SetPostRetraceCallback(retrace_callback);
   VIDEO_SetBlack(0);
   VIDEO_Flush();
   VIDEO_WaitVSync();

   RARCH_LOG("[GX]: Resolution: %dx%d (%s)\n", gx_mode.fbWidth,
         gx_mode.efbHeight, (gx_mode.viTVMode & 3) == VI_INTERLACE
         ? "interlaced" : "progressive");

   if (tvmode == 128)
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

   driver_ctl(RARCH_DRIVER_CTL_SET_REFRESH_RATE, &refresh_rate);
}
