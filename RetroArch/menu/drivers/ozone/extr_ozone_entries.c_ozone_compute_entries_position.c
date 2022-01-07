
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int wrap; scalar_t__ height; scalar_t__ position_y; } ;
typedef TYPE_3__ ozone_node_t ;
struct TYPE_15__ {int entry_icon_padding; scalar_t__ thumbnail_bar_width; scalar_t__ sidebar_width; scalar_t__ entry_spacing; scalar_t__ entry_height; } ;
struct TYPE_14__ {int entries_sublabel; } ;
struct TYPE_17__ {int empty_playlist; scalar_t__* icons_textures; int depth; int sublabel_font_glyph_width; size_t selection; scalar_t__ entries_height; TYPE_2__ dimensions; scalar_t__ show_thumbnail_bar; scalar_t__ is_playlist; TYPE_1__ fonts; } ;
typedef TYPE_4__ ozone_handle_t ;
typedef scalar_t__ menu_texture_item ;
struct TYPE_18__ {int path_enabled; int label_enabled; int rich_label_enabled; int value_enabled; int type; int enum_idx; } ;
typedef TYPE_5__ menu_entry_t ;
typedef int file_list_t ;


 int MENU_ENTRIES_CTL_START_GET ;
 int MENU_SUBLABEL_MAX_LENGTH ;
 size_t OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO ;
 scalar_t__ file_list_get_userdata_at_offset (int *,size_t) ;
 unsigned int font_driver_get_line_height (int ,float) ;
 int menu_entries_ctl (int ,size_t*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_entries_get_size () ;
 int menu_entry_get (TYPE_5__*,int ,unsigned int,int *,int) ;
 int menu_entry_get_sublabel (TYPE_5__*,char const**) ;
 int menu_entry_init (TYPE_5__*) ;
 size_t menu_navigation_get_selection () ;
 unsigned int ozone_count_lines (char*) ;
 scalar_t__ ozone_entries_icon_get_texture (TYPE_4__*,int ,int ,int) ;
 int ozone_get_entries_padding (TYPE_4__*,int) ;
 int ozone_update_scroll (TYPE_4__*,int,TYPE_3__*) ;
 int string_is_empty (char const*) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int word_wrap (char*,char const*,int,int,int ) ;

void ozone_compute_entries_position(ozone_handle_t *ozone)
{

   unsigned video_info_height;
   unsigned video_info_width;
   unsigned lines;
   size_t i, entries_end;

   file_list_t *selection_buf = ((void*)0);
   int entry_padding = ozone_get_entries_padding(ozone, 0);
   unsigned sublabel_line_height = font_driver_get_line_height(ozone->fonts.entries_sublabel, 1.0f);

   menu_entries_ctl(MENU_ENTRIES_CTL_START_GET, &i);

   entries_end = menu_entries_get_size();
   selection_buf = menu_entries_get_selection_buf_ptr(0);

   video_driver_get_size(&video_info_width, &video_info_height);

   ozone->entries_height = 0;

   for (i = 0; i < entries_end; i++)
   {

      menu_entry_t entry;
      ozone_node_t *node = ((void*)0);
      const char *sublabel_str = ((void*)0);

      menu_entry_init(&entry);
      entry.path_enabled = 0;
      entry.label_enabled = 0;
      entry.rich_label_enabled = 0;
      entry.value_enabled = 0;
      menu_entry_get(&entry, 0, (unsigned)i, ((void*)0), 1);




      if (ozone->is_playlist && entries_end == 1)
      {
         menu_texture_item tex = ozone_entries_icon_get_texture(ozone, entry.enum_idx, entry.type, 0);
         ozone->empty_playlist = tex == ozone->icons_textures[OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO];
      }
      else
      {
         ozone->empty_playlist = 0;
      }


      node = (ozone_node_t*)file_list_get_userdata_at_offset(selection_buf, i);

      if (!node)
         continue;

      node->height = ozone->dimensions.entry_height;
      node->wrap = 0;

      menu_entry_get_sublabel(&entry, &sublabel_str);

      if (!string_is_empty(sublabel_str))
      {
         int sublabel_max_width;
         char wrapped_sublabel_str[MENU_SUBLABEL_MAX_LENGTH];
         wrapped_sublabel_str[0] = '\0';

         node->height += ozone->dimensions.entry_spacing + 40;

         sublabel_max_width = video_info_width -
            entry_padding * 2 - ozone->dimensions.entry_icon_padding * 2;

         if (ozone->depth == 1)
            sublabel_max_width -= (unsigned) ozone->dimensions.sidebar_width;

         if (ozone->show_thumbnail_bar)
            sublabel_max_width -= ozone->dimensions.thumbnail_bar_width;

         word_wrap(wrapped_sublabel_str, sublabel_str, sublabel_max_width / ozone->sublabel_font_glyph_width, 0, 0);

         lines = ozone_count_lines(wrapped_sublabel_str);

         if (lines > 1)
         {
            node->height += (lines - 1) * sublabel_line_height;
            node->wrap = 1;
         }
      }

      node->position_y = ozone->entries_height;

      ozone->entries_height += node->height;
   }


   ozone->selection = menu_navigation_get_selection();
   ozone_update_scroll(ozone, 0, (ozone_node_t*) file_list_get_userdata_at_offset(selection_buf, ozone->selection));
}
