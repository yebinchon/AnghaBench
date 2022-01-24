#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
struct TYPE_24__ {int height; int /*<<< orphan*/  width; } ;
typedef  TYPE_5__ video_frame_info_t ;
struct TYPE_25__ {float alpha; int width; int unfold; int offset_y; int text_height; scalar_t__ unfolding; int /*<<< orphan*/  unfolded; int /*<<< orphan*/  msg; } ;
typedef  TYPE_6__ menu_widget_msg_t ;
typedef  scalar_t__ menu_texture_item ;
struct TYPE_22__ {scalar_t__ vertices; } ;
struct TYPE_23__ {TYPE_3__ coords; } ;
struct TYPE_20__ {scalar_t__ vertices; } ;
struct TYPE_21__ {TYPE_1__ coords; } ;
struct TYPE_19__ {TYPE_4__ carr; } ;
struct TYPE_18__ {TYPE_2__ carr; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 size_t MENU_WIDGETS_ICON_INFO ; 
 int /*<<< orphan*/  TEXT_ALIGN_LEFT ; 
 int /*<<< orphan*/  font_bold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_16__ font_raster_bold ; 
 TYPE_15__ font_raster_regular ; 
 int /*<<< orphan*/  font_regular ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__* menu_widgets_icons_textures ; 
 int /*<<< orphan*/  menu_widgets_pure_white ; 
 int /*<<< orphan*/  msg_queue_background ; 
 scalar_t__ msg_queue_has_icons ; 
 int /*<<< orphan*/  msg_queue_height ; 
 scalar_t__ msg_queue_icon ; 
 int msg_queue_icon_offset_y ; 
 scalar_t__ msg_queue_icon_outline ; 
 scalar_t__ msg_queue_icon_rect ; 
 int /*<<< orphan*/  msg_queue_icon_size_x ; 
 int /*<<< orphan*/  msg_queue_icon_size_y ; 
 int /*<<< orphan*/  msg_queue_info ; 
 int msg_queue_internal_icon_offset ; 
 int /*<<< orphan*/  msg_queue_internal_icon_size ; 
 int /*<<< orphan*/  msg_queue_rect_start_x ; 
 int msg_queue_regular_text_base_y ; 
 scalar_t__ msg_queue_regular_text_start ; 
 int msg_queue_scissor_start_x ; 
 scalar_t__ msg_queue_spacing ; 
 int /*<<< orphan*/  msg_queue_text_scale_factor ; 
 int simple_widget_padding ; 

__attribute__((used)) static void FUNC10(menu_widget_msg_t *msg, video_frame_info_t *video_info)
{
   menu_texture_item icon     = 0;

   unsigned bar_width;
   unsigned text_color;

   if (!icon)
      icon = menu_widgets_icons_textures[MENU_WIDGETS_ICON_INFO]; /* TODO: Real icon logic here */

   /* Icon */
   FUNC8(msg_queue_info, msg->alpha);
   FUNC8(menu_widgets_pure_white, msg->alpha);
   FUNC8(msg_queue_background, msg->alpha);

   if (!msg->unfolded || msg->unfolding)
   {
      FUNC1(video_info->width, video_info->height, font_regular, video_info);
      FUNC1(video_info->width, video_info->height, font_bold, video_info);

      font_raster_regular.carr.coords.vertices  = 0;
      font_raster_bold.carr.coords.vertices     = 0;

      FUNC6(video_info, msg_queue_scissor_start_x, 0,
         (msg_queue_scissor_start_x + msg->width - simple_widget_padding*2) * msg->unfold, video_info->height);
   }

   if (msg_queue_has_icons)
   {
      FUNC2(video_info);
      /* (int) cast is to be consistent with the rect drawing and prevent alignment
      * issues, don't remove it */
      FUNC9(video_info,
         msg_queue_icon_size_x, msg_queue_icon_size_y,
         msg_queue_icon_rect, msg_queue_spacing, (int)(video_info->height - msg->offset_y - msg_queue_icon_offset_y),
         video_info->width, video_info->height, 
         0, 1, msg_queue_background);

      FUNC3(video_info);
   }

   /* Background */
   bar_width = simple_widget_padding + msg->width;

   FUNC4(video_info,
      msg_queue_rect_start_x, video_info->height - msg->offset_y,
      bar_width, msg_queue_height,
      video_info->width, video_info->height,
      msg_queue_background
   );

   /* Text */
   text_color = FUNC0(0xFFFFFF00, (unsigned)(msg->alpha*255.0f));

   FUNC5(font_regular,
      msg->msg,
      msg_queue_regular_text_start - ((1.0f-msg->unfold) * msg->width/2),
      video_info->height - msg->offset_y + msg_queue_regular_text_base_y - msg->text_height/2,
      video_info->width, video_info->height,
      text_color,
      TEXT_ALIGN_LEFT,
      msg_queue_text_scale_factor, false, 0, true
   );

   if (!msg->unfolded || msg->unfolding)
   {
      FUNC1(video_info->width, video_info->height, font_regular, video_info);
      FUNC1(video_info->width, video_info->height, font_bold, video_info);

      font_raster_regular.carr.coords.vertices  = 0;
      font_raster_bold.carr.coords.vertices     = 0;

      FUNC7(video_info);
   }

   if (msg_queue_has_icons)
   {
      FUNC2(video_info);

      FUNC9(video_info,
         msg_queue_icon_size_x, msg_queue_icon_size_y,
         msg_queue_icon, msg_queue_spacing, video_info->height - msg->offset_y - msg_queue_icon_offset_y, 
         video_info->width, video_info->height,
         0, 1, msg_queue_info);

      FUNC9(video_info,
         msg_queue_icon_size_x, msg_queue_icon_size_y,
         msg_queue_icon_outline, msg_queue_spacing, video_info->height - msg->offset_y - msg_queue_icon_offset_y, 
         video_info->width, video_info->height,
         0, 1, menu_widgets_pure_white);

      FUNC9(video_info,
         msg_queue_internal_icon_size, msg_queue_internal_icon_size,
         icon, msg_queue_spacing + msg_queue_internal_icon_offset, video_info->height - msg->offset_y - msg_queue_icon_offset_y + msg_queue_internal_icon_offset, 
         video_info->width, video_info->height,
         0, 1, menu_widgets_pure_white);

      FUNC3(video_info);
   }
}