
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int menu_entry_t ;
struct TYPE_12__ {int secondary; int primary; } ;
struct TYPE_16__ {float y; TYPE_1__ thumbnails; } ;
typedef TYPE_5__ materialui_node_t ;
struct TYPE_15__ {int divider; int list_text; int list_text_highlighted; } ;
struct TYPE_13__ {int glyph_width; scalar_t__ font_height; int font; } ;
struct TYPE_14__ {TYPE_2__ list; } ;
struct TYPE_19__ {int selected; char* s; size_t len; char const* str; } ;
struct TYPE_18__ {int selected; unsigned int field_width; char const* src_str; char* dst_str; int dst_str_len; int font; } ;
struct TYPE_17__ {int margin; int landscape_entry_margin; float scroll_y; int ticker_str_width; TYPE_4__ colors; int entry_divider_width; TYPE_3__ font_data; scalar_t__ dip_base_unit_size; scalar_t__ thumbnail_height_max; scalar_t__ ticker_x_offset; TYPE_8__ ticker; TYPE_7__ ticker_smooth; scalar_t__ use_smooth_ticker; scalar_t__ thumbnail_width_max; scalar_t__ nav_bar_layout_width; } ;
typedef TYPE_6__ materialui_handle_t ;
typedef int label_buf ;


 int TEXT_ALIGN_LEFT ;
 int materialui_draw_thumbnail (TYPE_6__*,int *,int *,float,float,unsigned int,unsigned int,float) ;
 int menu_animation_ticker (TYPE_8__*) ;
 int menu_animation_ticker_smooth (TYPE_7__*) ;
 int menu_display_draw_quad (int *,float,float,unsigned int,int ,unsigned int,unsigned int,int ) ;
 int menu_display_draw_text (int ,char*,float,float,unsigned int,unsigned int,int ,int ,float,int,int ,int) ;
 int menu_entry_get_rich_label (int *,char const**) ;
 int string_is_empty (char const*) ;
 int utf8len (char*) ;

__attribute__((used)) static void materialui_render_menu_entry_playlist_dual_icon(
      materialui_handle_t *mui,
      video_frame_info_t *video_info,
      materialui_node_t *node,
      menu_entry_t *entry,
      bool entry_selected,
      bool touch_feedback_active,
      unsigned header_height,
      unsigned width, unsigned height,
      int x_offset)
{
   const char *entry_label = ((void*)0);
   int usable_width =
         (int)width - (int)(mui->margin * 2) -
         (int)(mui->landscape_entry_margin * 2) - (int)mui->nav_bar_layout_width;
   float entry_y = (float)header_height - mui->scroll_y + node->y;
   float thumbnail_y;



   if (mui->use_smooth_ticker)
   {
      mui->ticker_smooth.font = mui->font_data.list.font;
      mui->ticker_smooth.selected = entry_selected;
   }
   else
      mui->ticker.selected = entry_selected;


   menu_entry_get_rich_label(entry, &entry_label);




   thumbnail_y =
         entry_y + ((float)mui->dip_base_unit_size / 10.0f);


   materialui_draw_thumbnail(
         mui,
         video_info,
         &node->thumbnails.primary,
         (float)(x_offset + (int)mui->margin + (int)mui->landscape_entry_margin),
         thumbnail_y,
         width,
         height,
         1.0f);


   materialui_draw_thumbnail(
         mui,
         video_info,
         &node->thumbnails.secondary,
         (float)(x_offset + (int)width - (int)mui->margin - (int)mui->landscape_entry_margin -
               (int)mui->nav_bar_layout_width - (int)mui->thumbnail_width_max),
         thumbnail_y,
         width,
         height,
         1.0f);


   if (!string_is_empty(entry_label))
   {
      float label_x = 0.0f;


      float label_y =
            thumbnail_y + (float)mui->thumbnail_height_max +
            ((float)mui->dip_base_unit_size / 10.0f) +
            (9.0f * (float)mui->font_data.list.font_height / 20.0f);

      bool draw_text_outside = (x_offset != 0);
      char label_buf[255];

      label_buf[0] = '\0';

      if (usable_width > 0)
      {

         if (mui->use_smooth_ticker)
         {

            mui->ticker_smooth.field_width = (unsigned)usable_width;
            mui->ticker_smooth.src_str = entry_label;
            mui->ticker_smooth.dst_str = label_buf;
            mui->ticker_smooth.dst_str_len = sizeof(label_buf);


            if (!menu_animation_ticker_smooth(&mui->ticker_smooth))
               label_x = (float)(usable_width - mui->ticker_str_width) / 2.0f;
         }
         else
         {

            mui->ticker.s = label_buf;
            mui->ticker.len = (size_t)(usable_width / mui->font_data.list.glyph_width);
            mui->ticker.str = entry_label;


            if (!menu_animation_ticker(&mui->ticker))
            {
               int str_width = (int)(utf8len(label_buf) *
                  mui->font_data.list.glyph_width);

               label_x = (float)(usable_width - str_width) / 2.0f;
            }
         }

         label_x += (float)(x_offset + (int)mui->ticker_x_offset +
               (int)mui->margin + (int)mui->landscape_entry_margin);


         menu_display_draw_text(mui->font_data.list.font, label_buf,
               label_x,
               label_y,
               width, height,
               (entry_selected || touch_feedback_active) ?
                     mui->colors.list_text_highlighted : mui->colors.list_text,
               TEXT_ALIGN_LEFT, 1.0f, 0, 0, draw_text_outside);
      }
   }


   if (usable_width > 0)
      menu_display_draw_quad(
            video_info,
            (float)(x_offset + (int)mui->margin + (int)mui->landscape_entry_margin),
            thumbnail_y + (float)mui->thumbnail_height_max +
                  ((float)mui->dip_base_unit_size / 10.0f) +
                  (float)mui->font_data.list.font_height,
            (unsigned)usable_width,
            mui->entry_divider_width,
            width,
            height,
            mui->colors.divider);
}
