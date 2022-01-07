
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* battery_percent_str; char* timedate_str; scalar_t__ timedate_width; scalar_t__ battery_percent_width; } ;
struct TYPE_12__ {int glyph_width; int * font; void* font_height; } ;
struct TYPE_14__ {int glyph_width; int * font; void* font_height; } ;
struct TYPE_13__ {int glyph_width; int * font; void* font_height; } ;
struct TYPE_15__ {TYPE_3__ hint; TYPE_5__ list; TYPE_4__ title; } ;
struct TYPE_11__ {int width; unsigned int divider_width; int selection_marker_width; int location; } ;
struct TYPE_16__ {int is_portrait; scalar_t__ last_height; scalar_t__ last_width; int cursor_size; int dip_base_unit_size; int sys_bar_height; int title_bar_height; int header_shadow_height; int margin; int icon_size; int sys_bar_margin; int sys_bar_icon_size; unsigned int entry_divider_width; float last_scale_factor; int nav_bar_layout_width; int nav_bar_layout_height; int need_compute; TYPE_1__ sys_bar_cache; TYPE_6__ font_data; TYPE_2__ nav_bar; scalar_t__ last_auto_rotate_nav_bar; } ;
typedef TYPE_7__ materialui_handle_t ;


 int APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT ;
 int MUI_NAV_BAR_LOCATION_BOTTOM ;
 int MUI_NAV_BAR_LOCATION_RIGHT ;
 void* font_driver_get_line_height (int *,float) ;
 unsigned int font_driver_get_message_width (int *,char*,int,int) ;
 int materialui_update_list_view (TYPE_7__*) ;
 void* menu_display_font (int ,int,int) ;
 int menu_display_font_free (int *) ;
 int menu_display_set_header_height (unsigned int) ;

__attribute__((used)) static void materialui_layout(materialui_handle_t *mui, bool video_is_threaded)
{
   int title_font_size;
   int list_font_size;
   int hint_font_size;
   unsigned new_header_height;

   mui->is_portrait = mui->last_height >= mui->last_width;

   mui->cursor_size = mui->dip_base_unit_size / 3;

   mui->sys_bar_height = mui->dip_base_unit_size / 7;
   mui->title_bar_height = mui->dip_base_unit_size / 3;
   new_header_height = mui->sys_bar_height + mui->title_bar_height;

   title_font_size = mui->dip_base_unit_size / 7;
   list_font_size = mui->dip_base_unit_size / 9;
   hint_font_size = mui->dip_base_unit_size / 11;

   mui->header_shadow_height = mui->dip_base_unit_size / 36;

   mui->margin = mui->dip_base_unit_size / 9;
   mui->icon_size = mui->dip_base_unit_size / 3;

   mui->sys_bar_margin = mui->dip_base_unit_size / 12;
   mui->sys_bar_icon_size = mui->dip_base_unit_size / 7;

   mui->entry_divider_width = (mui->last_scale_factor > 1.0f) ?
         (unsigned)(mui->last_scale_factor + 0.5f) : 1;
   mui->nav_bar.width = mui->dip_base_unit_size / 3;
   mui->nav_bar.divider_width = mui->entry_divider_width;
   mui->nav_bar.selection_marker_width = mui->nav_bar.width / 16;

   if (!mui->is_portrait && mui->last_auto_rotate_nav_bar)
   {
      mui->nav_bar.location = MUI_NAV_BAR_LOCATION_RIGHT;
      mui->nav_bar_layout_width = mui->nav_bar.width;
      mui->nav_bar_layout_height = 0;
   }
   else
   {
      mui->nav_bar.location = MUI_NAV_BAR_LOCATION_BOTTOM;
      mui->nav_bar_layout_width = 0;
      mui->nav_bar_layout_height = mui->nav_bar.width;
   }


   mui->font_data.title.glyph_width = (int)((title_font_size * (3.0f / 4.0f)) + 0.5f);
   mui->font_data.list.glyph_width = (int)((list_font_size * (3.0f / 4.0f)) + 0.5f);
   mui->font_data.hint.glyph_width = (int)((hint_font_size * (3.0f / 4.0f)) + 0.5f);

   menu_display_set_header_height(new_header_height);

   if (mui->font_data.title.font)
   {
      menu_display_font_free(mui->font_data.title.font);
      mui->font_data.title.font = ((void*)0);
   }
   if (mui->font_data.list.font)
   {
      menu_display_font_free(mui->font_data.list.font);
      mui->font_data.list.font = ((void*)0);
   }
   if (mui->font_data.hint.font)
   {
      menu_display_font_free(mui->font_data.hint.font);
      mui->font_data.hint.font = ((void*)0);
   }

   mui->font_data.title.font = menu_display_font(
         APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT,
         title_font_size, video_is_threaded);

   mui->font_data.list.font = menu_display_font(
         APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT,
         list_font_size, video_is_threaded);

   mui->font_data.hint.font = menu_display_font(
         APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_FONT,
         hint_font_size, video_is_threaded);

   if (mui->font_data.title.font)
   {

      unsigned title_char_width =
         font_driver_get_message_width(mui->font_data.title.font, "a", 1, 1);

      if (title_char_width)
         mui->font_data.title.glyph_width = title_char_width;


      mui->font_data.title.font_height = font_driver_get_line_height(mui->font_data.title.font, 1.0f);
   }

   if (mui->font_data.list.font)
   {

      unsigned list_char_width =
         font_driver_get_message_width(mui->font_data.list.font, "a", 1, 1);

      if (list_char_width)
         mui->font_data.list.glyph_width = list_char_width;


      mui->font_data.list.font_height = font_driver_get_line_height(mui->font_data.list.font, 1.0f);
   }

   if (mui->font_data.hint.font)
   {

      unsigned hint_char_width =
         font_driver_get_message_width(mui->font_data.hint.font, "t", 1, 1);

      if (hint_char_width)
         mui->font_data.hint.glyph_width = hint_char_width;


      mui->font_data.hint.font_height = font_driver_get_line_height(mui->font_data.hint.font, 1.0f);
   }




   mui->sys_bar_cache.battery_percent_str[0] = '\0';
   mui->sys_bar_cache.battery_percent_width = 0;
   mui->sys_bar_cache.timedate_str[0] = '\0';
   mui->sys_bar_cache.timedate_width = 0;

   materialui_update_list_view(mui);

   mui->need_compute = 1;
}
