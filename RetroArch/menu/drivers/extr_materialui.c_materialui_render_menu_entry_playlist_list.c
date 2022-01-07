
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int video_frame_info_t ;
typedef int menu_entry_t ;
struct TYPE_20__ {int secondary; int primary; } ;
struct TYPE_21__ {unsigned int y; scalar_t__ entry_height; TYPE_6__ thumbnails; scalar_t__ text_height; } ;
typedef TYPE_7__ materialui_node_t ;
struct TYPE_16__ {int divider; int list_hint_text; int list_hint_text_highlighted; int list_text; int list_text_highlighted; } ;
struct TYPE_15__ {int glyph_width; int font; } ;
struct TYPE_17__ {int glyph_width; scalar_t__ font_height; int font; } ;
struct TYPE_18__ {TYPE_1__ hint; TYPE_3__ list; } ;
struct TYPE_14__ {int selected; char* s; size_t len; char const* str; } ;
struct TYPE_23__ {int selected; unsigned int field_width; char const* src_str; char* dst_str; int dst_str_len; int font; } ;
struct TYPE_19__ {scalar_t__ width; } ;
struct TYPE_22__ {unsigned int scroll_y; int margin; int landscape_entry_margin; scalar_t__ list_view_type; TYPE_2__ colors; int entry_divider_width; TYPE_4__ font_data; scalar_t__ ticker_x_offset; TYPE_10__ ticker; TYPE_9__ ticker_smooth; scalar_t__ use_smooth_ticker; scalar_t__ thumbnail_width_max; scalar_t__ nav_bar_layout_width; scalar_t__ secondary_thumbnail_enabled; TYPE_5__ scrollbar; scalar_t__ is_portrait; scalar_t__ thumbnail_height_max; } ;
typedef TYPE_8__ materialui_handle_t ;
typedef int label_buf ;


 int MENU_SUBLABEL_MAX_LENGTH ;
 scalar_t__ MUI_LIST_VIEW_PLAYLIST ;
 scalar_t__ MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE ;
 scalar_t__ MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM ;
 int TEXT_ALIGN_LEFT ;
 int materialui_draw_thumbnail (TYPE_8__*,int *,int *,float,float,unsigned int,unsigned int,float) ;
 int menu_animation_ticker (TYPE_10__*) ;
 int menu_animation_ticker_smooth (TYPE_9__*) ;
 int menu_display_draw_quad (int *,float,int,unsigned int,int ,unsigned int,unsigned int,int ) ;
 int menu_display_draw_text (int ,char*,int,int,unsigned int,unsigned int,int ,int ,float,int,int ,int) ;
 int menu_entry_get_rich_label (int *,char const**) ;
 int menu_entry_get_sublabel (int *,char const**) ;
 int string_is_empty (char const*) ;
 int word_wrap (char*,char const*,int,int,int ) ;

__attribute__((used)) static void materialui_render_menu_entry_playlist_list(
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
   const char *entry_sublabel = ((void*)0);
   int entry_y = header_height - mui->scroll_y + node->y;
   int entry_margin = (int)mui->margin + (int)mui->landscape_entry_margin;
   int usable_width =
         (int)width - (int)(mui->margin * 2) - (int)(mui->landscape_entry_margin * 2) - (int)mui->nav_bar_layout_width;







   int label_y =
         entry_y + ((float)(node->entry_height - node->text_height) / 2.0f) +
         (13.0f * (float)mui->font_data.list.font_height / 20.0f);
   bool draw_text_outside = (x_offset != 0);




   if (mui->use_smooth_ticker)
   {
      mui->ticker_smooth.font = mui->font_data.list.font;
      mui->ticker_smooth.selected = entry_selected;
   }
   else
      mui->ticker.selected = entry_selected;


   menu_entry_get_rich_label(entry, &entry_label);
   menu_entry_get_sublabel(entry, &entry_sublabel);





   if (mui->list_view_type != MUI_LIST_VIEW_PLAYLIST)
   {
      int thumbnail_margin = 0;
      float thumbnail_y =
            (float)entry_y + ((float)node->entry_height / 2.0f) - ((float)mui->thumbnail_height_max / 2.0f);






      if (mui->is_portrait)
      {
         if (mui->secondary_thumbnail_enabled)
            thumbnail_margin = (int)mui->scrollbar.width;
      }






      else
         if (mui->landscape_entry_margin < mui->margin)
            thumbnail_margin = (int)(mui->margin - mui->landscape_entry_margin);


      materialui_draw_thumbnail(
            mui,
            video_info,
            &node->thumbnails.primary,
            (float)(x_offset + thumbnail_margin + (int)mui->landscape_entry_margin),
            thumbnail_y,
            width,
            height,
            1.0f);

      entry_margin += mui->thumbnail_width_max + thumbnail_margin;
      usable_width -= mui->thumbnail_width_max + thumbnail_margin;


      if (mui->secondary_thumbnail_enabled)
      {
         materialui_draw_thumbnail(
               mui,
               video_info,
               &node->thumbnails.secondary,
               (float)(x_offset + (int)width - thumbnail_margin - (int)mui->landscape_entry_margin -
                     (int)mui->nav_bar_layout_width - (int)mui->thumbnail_width_max),
               thumbnail_y,
               width,
               height,
               1.0f);

         usable_width -= mui->thumbnail_width_max + thumbnail_margin;
      }





      else if (mui->landscape_entry_margin > 0)
         usable_width += (mui->margin > mui->landscape_entry_margin) ?
               (int)mui->landscape_entry_margin : (int)mui->margin;
   }


   if (!string_is_empty(entry_label))
   {
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

            menu_animation_ticker_smooth(&mui->ticker_smooth);
         }
         else
         {

            mui->ticker.s = label_buf;
            mui->ticker.len = (size_t)(usable_width / mui->font_data.list.glyph_width);
            mui->ticker.str = entry_label;

            menu_animation_ticker(&mui->ticker);
         }


         menu_display_draw_text(mui->font_data.list.font, label_buf,
               x_offset + (int)mui->ticker_x_offset + entry_margin,
               label_y,
               width, height,
               (entry_selected || touch_feedback_active) ?
                     mui->colors.list_text_highlighted : mui->colors.list_text,
               TEXT_ALIGN_LEFT, 1.0f, 0, 0, draw_text_outside);
      }
   }


   if (!string_is_empty(entry_sublabel))
   {
      int sublabel_y = label_y + (int)mui->font_data.list.font_height;
      char wrapped_sublabel[MENU_SUBLABEL_MAX_LENGTH];

      wrapped_sublabel[0] = '\0';


      word_wrap(wrapped_sublabel, entry_sublabel,
            (int)(usable_width / mui->font_data.hint.glyph_width),
            1, 0);







      menu_display_draw_text(mui->font_data.hint.font, wrapped_sublabel,
            x_offset + entry_margin,
            sublabel_y,
            width, height,
            (entry_selected || touch_feedback_active) ?
                  mui->colors.list_hint_text_highlighted : mui->colors.list_hint_text,
            TEXT_ALIGN_LEFT, 1.0f, 0, 0, draw_text_outside || (sublabel_y < 0));
   }
   if ((mui->list_view_type == MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM) ||
       (mui->list_view_type == MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE))
   {
      if (usable_width > 0)
         menu_display_draw_quad(
               video_info,
               (float)(x_offset + entry_margin),
               entry_y + (float)node->entry_height,
               (unsigned)usable_width,
               mui->entry_divider_width,
               width,
               height,
               mui->colors.divider);
   }
}
