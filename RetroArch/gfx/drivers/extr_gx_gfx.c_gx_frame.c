
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_18__ {scalar_t__ fps_show; } ;
typedef TYPE_3__ video_frame_info_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u8 ;
struct TYPE_16__ {scalar_t__ video_overscan_correction_top; scalar_t__ video_overscan_correction_bottom; } ;
struct TYPE_19__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
typedef int mem2_txt ;
typedef int mem1_txt ;
struct TYPE_17__ {int full_height; } ;
struct TYPE_20__ {scalar_t__ overscan_correction_top; scalar_t__ overscan_correction_bottom; int should_resize; void const* menu_data; int * framebuf; scalar_t__ double_strike; TYPE_2__ vp; scalar_t__ menu_texture_enable; scalar_t__ overlay_enable; scalar_t__ rgb32; } ;
typedef TYPE_5__ gx_video_t ;
struct TYPE_21__ {int obj; int data; } ;
struct TYPE_15__ {int obj; int data; int height; int width; } ;


 int DCFlushRange (int ,unsigned int) ;
 int FONT_HEIGHT ;
 int GX_CallDispList (int ,int ) ;
 int GX_CopyDisp (int ,int ) ;
 int GX_DrawDone () ;
 int GX_FALSE ;
 int GX_Flush () ;
 int GX_InvalidateTexAll () ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_PNMTX0 ;
 int GX_PNMTX1 ;
 int GX_SetCurrentMtx (int ) ;
 int GX_TEXMAP0 ;
 int GX_TRUE ;
 unsigned int MIN (int ,unsigned int) ;
 int OSSleepThread (int ) ;
 int SYSMEM1_SIZE ;
 int SYS_GetArena1Size () ;
 int VIDEO_Flush () ;
 int VIDEO_SetNextFramebuffer (int ) ;
 int VIDEO_WaitVSync () ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 TYPE_4__* config_get_ptr () ;
 int convert_texture16 (void const*,int ,unsigned int,unsigned int,size_t) ;
 int convert_texture16_conv (void const*,int ,unsigned int,unsigned int,unsigned int) ;
 int convert_texture32 (void const*,int ,unsigned int,unsigned int,unsigned int) ;
 int display_list ;
 int display_list_size ;
 int g_current_framebuf ;
 int g_draw_done ;
 TYPE_13__ g_tex ;
 int g_video_cond ;
 scalar_t__ g_vsync ;
 int gx_blit_line (TYPE_5__*,unsigned int,unsigned int,char const*) ;
 int gx_mem2_total () ;
 int gx_mem2_used () ;
 unsigned int gx_old_height ;
 unsigned int gx_old_width ;
 int gx_render_overlay (TYPE_5__*) ;
 int gx_resize (TYPE_5__*,TYPE_4__*) ;
 int init_texture (void*,unsigned int,unsigned int) ;
 int menu_display_get_fb_size (unsigned int*,unsigned int*,size_t*) ;
 int menu_driver_frame (TYPE_3__*) ;
 TYPE_6__ menu_tex ;
 scalar_t__ referenceRetraceCount ;
 scalar_t__ retraceCount ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static bool gx_frame(void *data, const void *frame,
      unsigned width, unsigned height,
      uint64_t frame_count, unsigned pitch,
      const char *msg,
      video_frame_info_t *video_info)
{
   char fps_text_buf[128];
   settings_t *settings = config_get_ptr();
   gx_video_t *gx = (gx_video_t*)data;
   u8 clear_efb = GX_FALSE;
   uint32_t level = 0;

   fps_text_buf[0] = '\0';

   if(!gx || (!frame && !gx->menu_texture_enable) || !settings)
      return 1;

   if (!frame)
      width = height = 4;

   if ((gx->overscan_correction_top != settings->uints.video_overscan_correction_top) ||
       (gx->overscan_correction_bottom != settings->uints.video_overscan_correction_bottom))
   {
      gx->overscan_correction_top = settings->uints.video_overscan_correction_top;
      gx->overscan_correction_bottom = settings->uints.video_overscan_correction_bottom;
      gx->should_resize = 1;
   }

   if(gx->should_resize)
   {
      gx_resize(gx, settings);
      clear_efb = GX_TRUE;
   }

   while (((g_vsync || gx->menu_texture_enable)) && !g_draw_done)
      OSSleepThread(g_video_cond);

   width = MIN(g_tex.width, width);
   height = MIN(g_tex.height, height);

   if (width != gx_old_width || height != gx_old_height)
   {
      init_texture(data, width, height);
      gx_old_width = width;
      gx_old_height = height;
   }

   g_draw_done = 0;
   g_current_framebuf ^= 1;

   if (frame)
   {
      if (gx->rgb32)
         convert_texture32(frame, g_tex.data, width, height, pitch);
      else if (gx->menu_texture_enable)
         convert_texture16_conv(frame, g_tex.data, width, height, pitch);
      else
         convert_texture16(frame, g_tex.data, width, height, pitch);
      DCFlushRange(g_tex.data, height * (width << (gx->rgb32 ? 2 : 1)));
   }

   if (gx->menu_texture_enable && gx->menu_data)
   {
      size_t fb_pitch;
      unsigned fb_width, fb_height;

      menu_display_get_fb_size(&fb_width, &fb_height,
            &fb_pitch);

      convert_texture16(
            gx->menu_data,
            menu_tex.data,
            fb_width,
            fb_height,
            fb_pitch);
      DCFlushRange(
            menu_tex.data,
            fb_width * fb_pitch);
   }





   GX_InvalidateTexAll();

   GX_SetCurrentMtx(GX_PNMTX0);
   GX_LoadTexObj(&g_tex.obj, GX_TEXMAP0);
   GX_CallDispList(display_list, display_list_size);

   if (gx->menu_texture_enable)
   {
      GX_SetCurrentMtx(GX_PNMTX1);
      GX_LoadTexObj(&menu_tex.obj, GX_TEXMAP0);
      GX_CallDispList(display_list, display_list_size);
   }






   _CPU_ISR_Disable(level);
   if (referenceRetraceCount > retraceCount) {
      if(g_vsync) {
         VIDEO_WaitVSync();
      }
   }
   referenceRetraceCount = retraceCount;
   _CPU_ISR_Restore(level);

   GX_DrawDone();

   if (video_info->fps_show)
   {
      char mem1_txt[128];
      char mem2_txt[128];
      unsigned x = 15;
      unsigned y = 35;

      mem1_txt[0] = mem2_txt[0] = '\0';

      (void)mem2_txt;

      gx_blit_line(gx, x, y, fps_text_buf);
      y += FONT_HEIGHT * (gx->double_strike ? 1 : 2);
      snprintf(mem1_txt, sizeof(mem1_txt), "MEM1: %8d / %8d",
            SYSMEM1_SIZE - SYS_GetArena1Size(), SYSMEM1_SIZE);
      gx_blit_line(gx, x, y, mem1_txt);






   }

   if (msg && !gx->menu_texture_enable)
   {
      unsigned x = 7 * (gx->double_strike ? 1 : 2);
      unsigned y = gx->vp.full_height - (35 * (gx->double_strike ? 1 : 2));

      gx_blit_line(gx, x, y, msg);
      clear_efb = GX_TRUE;
   }

   GX_CopyDisp(gx->framebuf[g_current_framebuf], clear_efb);
   GX_Flush();
   VIDEO_SetNextFramebuffer(gx->framebuf[g_current_framebuf]);
   VIDEO_Flush();

   _CPU_ISR_Disable(level);
   ++referenceRetraceCount;
   _CPU_ISR_Restore(level);

   return 1;
}
