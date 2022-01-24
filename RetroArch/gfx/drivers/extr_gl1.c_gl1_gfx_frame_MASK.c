#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int xmb_shadows_enable; char const* stat_text; char const* chat_text; int /*<<< orphan*/  input_driver_nonblock_state; scalar_t__ hard_sync; int /*<<< orphan*/  context_data; int /*<<< orphan*/  (* cb_swap_buffers ) (int /*<<< orphan*/ ,TYPE_2__*) ;int /*<<< orphan*/  runloop_is_paused; int /*<<< orphan*/  runloop_is_slowmotion; scalar_t__ black_frame_insertion; int /*<<< orphan*/  (* cb_update_window_title ) (int /*<<< orphan*/ ,TYPE_2__*) ;scalar_t__ widgets_inited; int /*<<< orphan*/  osd_stat_params; scalar_t__ statistics_show; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ menu_is_alive; int /*<<< orphan*/  (* cb_set_resize ) (int /*<<< orphan*/ ,unsigned int,unsigned int) ;scalar_t__ menu_shader_pipeline; } ;
typedef  TYPE_2__ video_frame_info_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct font_params {float y; float scale; } ;
struct TYPE_20__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_22__ {int should_resize; unsigned int video_width; unsigned int video_height; unsigned int screen_width; unsigned int screen_height; scalar_t__ menu_texture_enable; scalar_t__ readback_buffer_screenshot; scalar_t__ overlay_enable; int /*<<< orphan*/  menu_tex; TYPE_1__ vp; scalar_t__ menu_texture_full_screen; int /*<<< orphan*/  tex; } ;
typedef  TYPE_3__ gl1_t ;
struct TYPE_23__ {unsigned int width; unsigned int height; } ;
typedef  TYPE_4__ gfx_ctx_mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,void const*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,char const*,struct font_params const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 unsigned int gl1_menu_bits ; 
 scalar_t__ gl1_menu_frame ; 
 unsigned int gl1_menu_height ; 
 unsigned int gl1_menu_pitch ; 
 int gl1_menu_size_changed ; 
 unsigned char* gl1_menu_video_buf ; 
 unsigned int gl1_menu_width ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*) ; 
 unsigned int gl1_video_bits ; 
 unsigned char* gl1_video_buf ; 
 unsigned int gl1_video_height ; 
 unsigned int gl1_video_pitch ; 
 unsigned int gl1_video_width ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 

__attribute__((used)) static bool FUNC25(void *data, const void *frame,
      unsigned frame_width, unsigned frame_height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   gfx_ctx_mode_t mode;
   const void *frame_to_copy = NULL;
   unsigned width            = 0;
   unsigned height           = 0;
   unsigned bits             = gl1_video_bits;
   bool draw                 = true;
   gl1_t *gl1                = (gl1_t*)data;
   unsigned pot_width        = 0;
   unsigned pot_height       = 0;

   FUNC6(gl1, false);
   
   /* FIXME: Force these settings off as they interfere with the rendering */
   video_info->xmb_shadows_enable   = false;
   video_info->menu_shader_pipeline = 0;

   if (!frame || !frame_width || !frame_height)
      return true;

   if (gl1->should_resize)
   {
      gfx_ctx_mode_t mode;

      gl1->should_resize = false;

      mode.width        = width;
      mode.height       = height;

      video_info->cb_set_resize(video_info->context_data,
            mode.width, mode.height);

      FUNC7(gl1, video_info, video_info->width, video_info->height, false, true);
   }

   FUNC12(0.0f, 0.0f, 0.0f, 1.0f);
   FUNC11(GL_COLOR_BUFFER_BIT);

   FUNC13(GL_BLEND);
   FUNC10(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

   if (  gl1_video_width  != frame_width  ||
         gl1_video_height != frame_height ||
         gl1_video_pitch  != pitch)
   {
      if (frame_width > 4 && frame_height > 4)
      {
         gl1_video_width  = frame_width;
         gl1_video_height = frame_height;
         gl1_video_pitch  = pitch;

         pot_width = FUNC5(frame_width);
         pot_height = FUNC5(frame_height);

         if (gl1_video_buf)
            FUNC4(gl1_video_buf);

         gl1_video_buf = (unsigned char*)FUNC16(pot_width * pot_height * 4);
      }
   }

   width         = gl1_video_width;
   height        = gl1_video_height;
   pitch         = gl1_video_pitch;

   pot_width = FUNC5(width);
   pot_height = FUNC5(height);

   if (  frame_width  == 4 &&
         frame_height == 4 &&
         (frame_width < width && frame_height < height)
      )
      draw = false;

   if (draw && gl1_video_buf)
   {
      if (bits == 32)
      {
         unsigned y;
         /* copy lines into top-left portion of larger (power-of-two) buffer */
         for (y = 0; y < height; y++)
            FUNC17(gl1_video_buf + ((pot_width * (bits / 8)) * y), (const unsigned char*)frame + (pitch * y), width * (bits / 8));
      }
      else if (bits == 16)
         FUNC0(gl1_video_buf, frame, width, height, pot_width * sizeof(unsigned), pitch);

      frame_to_copy = gl1_video_buf;
   }

   if (gl1->video_width != width || gl1->video_height != height)
   {
      gl1->video_width  = width;
      gl1->video_height = height;
   }

   FUNC24(&mode);

   gl1->screen_width           = mode.width;
   gl1->screen_height          = mode.height;

   if (draw)
   {
      if (frame_to_copy)
      {
         FUNC2(gl1, pot_width, pot_height, width, height, gl1->tex, frame_to_copy);
      }
   }

   if (gl1_menu_frame && video_info->menu_is_alive)
   {
      frame_to_copy = NULL;
      width         = gl1_menu_width;
      height        = gl1_menu_height;
      pitch         = gl1_menu_pitch;
      bits          = gl1_menu_bits;

      pot_width = FUNC5(width);
      pot_height = FUNC5(height);

      if (gl1_menu_size_changed)
      {
         gl1_menu_size_changed = false;

         if (gl1_menu_video_buf)
         {
            FUNC4(gl1_menu_video_buf);
            gl1_menu_video_buf = NULL;
         }
      }

      if (!gl1_menu_video_buf)
         gl1_menu_video_buf = (unsigned char*)FUNC16(pot_width * pot_height * 4);

      if (bits == 16 && gl1_menu_video_buf)
      {
         FUNC1(gl1_menu_video_buf, gl1_menu_frame, width, height, pot_width * sizeof(unsigned), pitch);

         frame_to_copy = gl1_menu_video_buf;

         if (gl1->menu_texture_full_screen)
         {
            FUNC15(0, 0, video_info->width, video_info->height);
            FUNC2(gl1, pot_width, pot_height, width, height, gl1->menu_tex, frame_to_copy);
            FUNC15(gl1->vp.x, gl1->vp.y, gl1->vp.width, gl1->vp.height);
         }
         else
            FUNC2(gl1, pot_width, pot_height, width, height, gl1->menu_tex, frame_to_copy);
      }
   }

#ifdef HAVE_MENU
   if (gl1->menu_texture_enable)
      menu_driver_frame(video_info);
   else if (video_info->statistics_show)
   {
      struct font_params *osd_params = (struct font_params*)
         &video_info->osd_stat_params;

      if (osd_params)
      {
         font_driver_render_msg(video_info, NULL, video_info->stat_text,
               (const struct font_params*)&video_info->osd_stat_params);
#if 0
         osd_params->y               = 0.350f;
         osd_params->scale           = 0.75f;
         font_driver_render_msg(video_info, NULL, video_info->chat_text,
               (const struct font_params*)&video_info->osd_stat_params);
#endif
      }
   }

#ifdef HAVE_MENU_WIDGETS
   if (video_info->widgets_inited)
      menu_widgets_frame(video_info);
#endif
#endif

#ifdef HAVE_OVERLAY
   if (gl1->overlay_enable)
      gl1_render_overlay(gl1, video_info);
#endif

   if (msg)
      FUNC3(video_info, NULL, msg, NULL);

   video_info->cb_update_window_title(
         video_info->context_data, video_info);

   /* Screenshots. */
   if (gl1->readback_buffer_screenshot)
      FUNC8(gl1,
            4, GL_RGBA, GL_UNSIGNED_BYTE,
            gl1->readback_buffer_screenshot);

   /* emscripten has to do black frame insertion in its main loop */
#ifndef EMSCRIPTEN
   /* Disable BFI during fast forward, slow-motion,
    * and pause to prevent flicker. */
   if (
         video_info->black_frame_insertion
         && !video_info->input_driver_nonblock_state
         && !video_info->runloop_is_slowmotion
         && !video_info->runloop_is_paused)
   {
      video_info->cb_swap_buffers(video_info->context_data, video_info);
      FUNC11(GL_COLOR_BUFFER_BIT);
   }
#endif

   video_info->cb_swap_buffers(video_info->context_data, video_info);

   /* check if we are fast forwarding or in menu, if we are ignore hard sync */
   if (video_info->hard_sync
         && !video_info->input_driver_nonblock_state
         && !gl1->menu_texture_enable)
   {
      FUNC11(GL_COLOR_BUFFER_BIT);
      FUNC14();
   }
 
   FUNC6(gl1, true);

   return true;
}