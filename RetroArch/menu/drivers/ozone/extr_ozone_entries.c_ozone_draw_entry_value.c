
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int height; int width; } ;
typedef TYPE_4__ video_frame_info_t ;
typedef int uint32_t ;
struct TYPE_16__ {int entries_label; } ;
struct TYPE_15__ {int entries_checkmark; } ;
struct TYPE_19__ {TYPE_3__* theme; TYPE_2__ fonts; TYPE_1__ theme_dynamic; } ;
typedef TYPE_5__ ozone_handle_t ;
struct TYPE_20__ {char* value; scalar_t__ checked; } ;
typedef TYPE_6__ menu_entry_t ;
struct TYPE_17__ {int text_sublabel_rgba; int text_selected_rgba; int * textures; } ;


 int COLOR_TEXT_ALPHA (int ,int ) ;
 int MENU_ENUM_LABEL_DISABLED ;
 int MENU_ENUM_LABEL_ENABLED ;
 int MENU_ENUM_LABEL_VALUE_OFF ;
 int MENU_ENUM_LABEL_VALUE_ON ;
 size_t OZONE_THEME_TEXTURE_CHECK ;
 int TEXT_ALIGN_RIGHT ;
 int menu_display_blend_begin (TYPE_4__*) ;
 int menu_display_blend_end (TYPE_4__*) ;
 char* msg_hash_to_str (int ) ;
 int ozone_draw_icon (TYPE_4__*,int,int,int ,unsigned int,unsigned int,int ,int ,int ,int,int ) ;
 int ozone_draw_text (TYPE_4__*,TYPE_5__*,char*,unsigned int,unsigned int,int ,int ,int ,int ,int ,int) ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (char*,char*) ;

__attribute__((used)) static void ozone_draw_entry_value(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      char *value,
      unsigned x, unsigned y,
      uint32_t alpha_uint32,
      menu_entry_t *entry)
{
   bool switch_is_on = 1;
   bool do_draw_text = 0;

   if (!entry->checked && string_is_empty(value))
      return;


   if (entry->checked)
   {
      menu_display_blend_begin(video_info);
      ozone_draw_icon(video_info, 30, 30, ozone->theme->textures[OZONE_THEME_TEXTURE_CHECK], x - 20, y - 22, video_info->width, video_info->height, 0, 1, ozone->theme_dynamic.entries_checkmark);
      menu_display_blend_end(video_info);
      return;
   }


   if (string_is_equal(value, msg_hash_to_str(MENU_ENUM_LABEL_DISABLED)) ||
         (string_is_equal(value, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF))))
   {
      switch_is_on = 0;
      do_draw_text = 0;
   }
   else if (string_is_equal(value, msg_hash_to_str(MENU_ENUM_LABEL_ENABLED)) ||
         (string_is_equal(value, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ON))))
   {
      switch_is_on = 1;
      do_draw_text = 0;
   }
   else
   {
      if (!string_is_empty(entry->value))
      {
         if (
               string_is_equal(entry->value, "...") ||
               string_is_equal(entry->value, "(PRESET)") ||
               string_is_equal(entry->value, "(SHADER)") ||
               string_is_equal(entry->value, "(COMP)") ||
               string_is_equal(entry->value, "(CORE)") ||
               string_is_equal(entry->value, "(MOVIE)") ||
               string_is_equal(entry->value, "(MUSIC)") ||
               string_is_equal(entry->value, "(DIR)") ||
               string_is_equal(entry->value, "(RDB)") ||
               string_is_equal(entry->value, "(CURSOR)")||
               string_is_equal(entry->value, "(CFILE)") ||
               string_is_equal(entry->value, "(FILE)") ||
               string_is_equal(entry->value, "(IMAGE)")
            )
         {
            return;
         }
         else
            do_draw_text = 1;
      }
      else
         do_draw_text = 1;
   }

   if (do_draw_text)
   {
      ozone_draw_text(video_info, ozone, value, x, y, TEXT_ALIGN_RIGHT, video_info->width, video_info->height, ozone->fonts.entries_label, COLOR_TEXT_ALPHA(ozone->theme->text_selected_rgba, alpha_uint32), 0);
   }
   else
   {
      ozone_draw_text(video_info, ozone, (switch_is_on ? msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ON) : msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF)),
               x, y, TEXT_ALIGN_RIGHT, video_info->width, video_info->height, ozone->fonts.entries_label,
               COLOR_TEXT_ALPHA((switch_is_on ? ozone->theme->text_selected_rgba : ozone->theme->text_sublabel_rgba), alpha_uint32), 0);
   }
}
