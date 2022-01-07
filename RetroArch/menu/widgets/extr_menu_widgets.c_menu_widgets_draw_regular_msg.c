
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;
typedef struct TYPE_18__ TYPE_15__ ;


struct TYPE_24__ {int height; int width; } ;
typedef TYPE_5__ video_frame_info_t ;
struct TYPE_25__ {float alpha; int width; int unfold; int offset_y; int text_height; scalar_t__ unfolding; int unfolded; int msg; } ;
typedef TYPE_6__ menu_widget_msg_t ;
typedef scalar_t__ menu_texture_item ;
struct TYPE_22__ {scalar_t__ vertices; } ;
struct TYPE_23__ {TYPE_3__ coords; } ;
struct TYPE_20__ {scalar_t__ vertices; } ;
struct TYPE_21__ {TYPE_1__ coords; } ;
struct TYPE_19__ {TYPE_4__ carr; } ;
struct TYPE_18__ {TYPE_2__ carr; } ;


 unsigned int COLOR_TEXT_ALPHA (int,unsigned int) ;
 size_t MENU_WIDGETS_ICON_INFO ;
 int TEXT_ALIGN_LEFT ;
 int font_bold ;
 int font_driver_flush (int ,int,int ,TYPE_5__*) ;
 TYPE_16__ font_raster_bold ;
 TYPE_15__ font_raster_regular ;
 int font_regular ;
 int menu_display_blend_begin (TYPE_5__*) ;
 int menu_display_blend_end (TYPE_5__*) ;
 int menu_display_draw_quad (TYPE_5__*,int ,int,unsigned int,int ,int ,int,int ) ;
 int menu_display_draw_text (int ,int ,scalar_t__,int,int ,int,unsigned int,int ,int ,int,int ,int) ;
 int menu_display_scissor_begin (TYPE_5__*,int,int ,int,int) ;
 int menu_display_scissor_end (TYPE_5__*) ;
 int menu_display_set_alpha (int ,float) ;
 int menu_widgets_draw_icon (TYPE_5__*,int ,int ,scalar_t__,scalar_t__,int,int ,int,int ,int,int ) ;
 scalar_t__* menu_widgets_icons_textures ;
 int menu_widgets_pure_white ;
 int msg_queue_background ;
 scalar_t__ msg_queue_has_icons ;
 int msg_queue_height ;
 scalar_t__ msg_queue_icon ;
 int msg_queue_icon_offset_y ;
 scalar_t__ msg_queue_icon_outline ;
 scalar_t__ msg_queue_icon_rect ;
 int msg_queue_icon_size_x ;
 int msg_queue_icon_size_y ;
 int msg_queue_info ;
 int msg_queue_internal_icon_offset ;
 int msg_queue_internal_icon_size ;
 int msg_queue_rect_start_x ;
 int msg_queue_regular_text_base_y ;
 scalar_t__ msg_queue_regular_text_start ;
 int msg_queue_scissor_start_x ;
 scalar_t__ msg_queue_spacing ;
 int msg_queue_text_scale_factor ;
 int simple_widget_padding ;

__attribute__((used)) static void menu_widgets_draw_regular_msg(menu_widget_msg_t *msg, video_frame_info_t *video_info)
{
   menu_texture_item icon = 0;

   unsigned bar_width;
   unsigned text_color;

   if (!icon)
      icon = menu_widgets_icons_textures[MENU_WIDGETS_ICON_INFO];


   menu_display_set_alpha(msg_queue_info, msg->alpha);
   menu_display_set_alpha(menu_widgets_pure_white, msg->alpha);
   menu_display_set_alpha(msg_queue_background, msg->alpha);

   if (!msg->unfolded || msg->unfolding)
   {
      font_driver_flush(video_info->width, video_info->height, font_regular, video_info);
      font_driver_flush(video_info->width, video_info->height, font_bold, video_info);

      font_raster_regular.carr.coords.vertices = 0;
      font_raster_bold.carr.coords.vertices = 0;

      menu_display_scissor_begin(video_info, msg_queue_scissor_start_x, 0,
         (msg_queue_scissor_start_x + msg->width - simple_widget_padding*2) * msg->unfold, video_info->height);
   }

   if (msg_queue_has_icons)
   {
      menu_display_blend_begin(video_info);


      menu_widgets_draw_icon(video_info,
         msg_queue_icon_size_x, msg_queue_icon_size_y,
         msg_queue_icon_rect, msg_queue_spacing, (int)(video_info->height - msg->offset_y - msg_queue_icon_offset_y),
         video_info->width, video_info->height,
         0, 1, msg_queue_background);

      menu_display_blend_end(video_info);
   }


   bar_width = simple_widget_padding + msg->width;

   menu_display_draw_quad(video_info,
      msg_queue_rect_start_x, video_info->height - msg->offset_y,
      bar_width, msg_queue_height,
      video_info->width, video_info->height,
      msg_queue_background
   );


   text_color = COLOR_TEXT_ALPHA(0xFFFFFF00, (unsigned)(msg->alpha*255.0f));

   menu_display_draw_text(font_regular,
      msg->msg,
      msg_queue_regular_text_start - ((1.0f-msg->unfold) * msg->width/2),
      video_info->height - msg->offset_y + msg_queue_regular_text_base_y - msg->text_height/2,
      video_info->width, video_info->height,
      text_color,
      TEXT_ALIGN_LEFT,
      msg_queue_text_scale_factor, 0, 0, 1
   );

   if (!msg->unfolded || msg->unfolding)
   {
      font_driver_flush(video_info->width, video_info->height, font_regular, video_info);
      font_driver_flush(video_info->width, video_info->height, font_bold, video_info);

      font_raster_regular.carr.coords.vertices = 0;
      font_raster_bold.carr.coords.vertices = 0;

      menu_display_scissor_end(video_info);
   }

   if (msg_queue_has_icons)
   {
      menu_display_blend_begin(video_info);

      menu_widgets_draw_icon(video_info,
         msg_queue_icon_size_x, msg_queue_icon_size_y,
         msg_queue_icon, msg_queue_spacing, video_info->height - msg->offset_y - msg_queue_icon_offset_y,
         video_info->width, video_info->height,
         0, 1, msg_queue_info);

      menu_widgets_draw_icon(video_info,
         msg_queue_icon_size_x, msg_queue_icon_size_y,
         msg_queue_icon_outline, msg_queue_spacing, video_info->height - msg->offset_y - msg_queue_icon_offset_y,
         video_info->width, video_info->height,
         0, 1, menu_widgets_pure_white);

      menu_widgets_draw_icon(video_info,
         msg_queue_internal_icon_size, msg_queue_internal_icon_size,
         icon, msg_queue_spacing + msg_queue_internal_icon_offset, video_info->height - msg->offset_y - msg_queue_icon_offset_y + msg_queue_internal_icon_offset,
         video_info->width, video_info->height,
         0, 1, menu_widgets_pure_white);

      menu_display_blend_end(video_info);
   }
}
