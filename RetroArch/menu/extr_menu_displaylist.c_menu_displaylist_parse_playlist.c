
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int system_name ;
struct playlist_entry {char const* path; char const* label; char const* core_name; } ;
struct TYPE_10__ {char const* menu_driver; } ;
struct TYPE_9__ {scalar_t__ playlist_show_inline_core_name; } ;
struct TYPE_8__ {int playlist_show_sublabels; } ;
struct TYPE_11__ {TYPE_3__ arrays; TYPE_2__ uints; TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
typedef int playlist_t ;
typedef int menu_entry_label ;
struct TYPE_12__ {char const* path; int need_push_no_playlist_entries; int count; int list; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
typedef int lpl_basename ;
typedef int label_spacer ;


 int FILE_TYPE_PLAYLIST_ENTRY ;
 int FILE_TYPE_RPL_ENTRY ;






 int MENU_ENUM_LABEL_PLAYLIST_ENTRY ;
 int PATH_MAX_LENGTH ;
 scalar_t__ PLAYLIST_INLINE_CORE_DISPLAY_ALWAYS ;
 scalar_t__ PLAYLIST_INLINE_CORE_DISPLAY_NEVER ;
 char const* PL_LABEL_SPACER_DEFAULT ;
 int PL_LABEL_SPACER_MAXLEN ;
 char const* PL_LABEL_SPACER_RGUI ;
 TYPE_4__* config_get_ptr () ;
 int file_list_reserve (int ,size_t) ;
 int fill_pathname_base_noext (char*,char const*,int) ;
 int fill_short_pathname_representation (char*,char const*,int) ;
 void label_keep_disc (char*) ;
 void label_keep_region (char*) ;
 void label_keep_region_and_disc (char*) ;
 void label_remove_brackets (char*) ;
 void label_remove_parens (char*) ;
 void label_remove_parens_and_brackets (char*) ;
 int menu_driver_set_thumbnail_system (char*,int) ;
 int menu_entries_append_enum (int ,char*,char const*,int ,int ,int ,unsigned int) ;
 int playlist_get_index (int *,unsigned int,struct playlist_entry const**) ;
 int playlist_get_label_display_mode (int *) ;
 size_t playlist_size (int *) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 void stub1 (char*) ;

__attribute__((used)) static int menu_displaylist_parse_playlist(menu_displaylist_info_t *info,
      playlist_t *playlist, const char *path_playlist, bool is_collection)
{
   unsigned i;
   char label_spacer[PL_LABEL_SPACER_MAXLEN];
   size_t list_size = playlist_size(playlist);
   settings_t *settings = config_get_ptr();
   bool show_inline_core_name = 0;
   void (*sanitization)(char*);

   label_spacer[0] = '\0';

   if (list_size == 0)
      goto error;


   if (!string_is_equal(settings->arrays.menu_driver, "ozone") &&
       !settings->bools.playlist_show_sublabels &&
       ((settings->uints.playlist_show_inline_core_name == PLAYLIST_INLINE_CORE_DISPLAY_ALWAYS) ||
        (!is_collection && !(settings->uints.playlist_show_inline_core_name == PLAYLIST_INLINE_CORE_DISPLAY_NEVER))))
   {
      show_inline_core_name = 1;



      if (string_is_equal(settings->arrays.menu_driver, "rgui"))
         strlcpy(label_spacer, PL_LABEL_SPACER_RGUI, sizeof(label_spacer));
      else
         strlcpy(label_spacer, PL_LABEL_SPACER_DEFAULT, sizeof(label_spacer));
   }
   if (string_is_equal(path_playlist, "history") ||
       string_is_equal(path_playlist, "favorites") ||
       string_is_equal(path_playlist, "images_history") ||
       string_is_equal(path_playlist, "music_history") ||
       string_is_equal(path_playlist, "video_history"))
   {
      char system_name[15];
      system_name[0] = '\0';

      strlcpy(system_name, path_playlist, sizeof(system_name));
      menu_driver_set_thumbnail_system(system_name, sizeof(system_name));
   }
   else if (!string_is_empty(info->path))
   {
      char lpl_basename[PATH_MAX_LENGTH];
      lpl_basename[0] = '\0';

      fill_pathname_base_noext(lpl_basename, info->path, sizeof(lpl_basename));
      menu_driver_set_thumbnail_system(lpl_basename, sizeof(lpl_basename));
   }


   file_list_reserve(info->list, list_size);

   switch (playlist_get_label_display_mode(playlist))
   {
      case 129 :
         sanitization = &label_remove_parens;
         break;
      case 130 :
         sanitization = &label_remove_brackets;
         break;
      case 128 :
         sanitization = &label_remove_parens_and_brackets;
         break;
      case 133 :
         sanitization = &label_keep_disc;
         break;
      case 132 :
         sanitization = &label_keep_region;
         break;
      case 131 :
         sanitization = &label_keep_region_and_disc;
         break;
      default :
         sanitization = ((void*)0);
   }

   for (i = 0; i < list_size; i++)
   {
      char menu_entry_label[PATH_MAX_LENGTH];
      const struct playlist_entry *entry = ((void*)0);

      menu_entry_label[0] = '\0';


      playlist_get_index(playlist, i, &entry);

      if (!string_is_empty(entry->path))
      {






         if (string_is_empty(entry->label))
            fill_short_pathname_representation(menu_entry_label, entry->path, sizeof(menu_entry_label));
         else
            strlcpy(menu_entry_label, entry->label, sizeof(menu_entry_label));

         if (sanitization)
            (*sanitization)(menu_entry_label);

         if (show_inline_core_name)
         {
            if (!string_is_empty(entry->core_name) && !string_is_equal(entry->core_name, "DETECT"))
            {
               strlcat(menu_entry_label, label_spacer, sizeof(menu_entry_label));
               strlcat(menu_entry_label, entry->core_name, sizeof(menu_entry_label));
            }
         }

         menu_entries_append_enum(info->list, menu_entry_label, entry->path,
               MENU_ENUM_LABEL_PLAYLIST_ENTRY, FILE_TYPE_RPL_ENTRY, 0, i);
      }
      else
      {
         if (entry->core_name)
            strlcpy(menu_entry_label, entry->core_name, sizeof(menu_entry_label));

         menu_entries_append_enum(info->list, menu_entry_label, path_playlist,
               MENU_ENUM_LABEL_PLAYLIST_ENTRY, FILE_TYPE_PLAYLIST_ENTRY, 0, i);
      }

      info->count++;
   }

   return 0;

error:
   info->need_push_no_playlist_entries = 1;
   return 0;
}
