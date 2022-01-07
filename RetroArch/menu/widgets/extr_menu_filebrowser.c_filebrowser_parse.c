
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


struct string_list {size_t size; TYPE_4__* elems; } ;
struct retro_subsystem_info {size_t num_roms; TYPE_2__* roms; } ;
struct TYPE_16__ {int menu_navigation_browser_filter_supported_extensions_enable; scalar_t__ multimedia_builtin_imageviewer_enable; scalar_t__ multimedia_builtin_mediaplayer_enable; int show_hidden_files; } ;
struct TYPE_17__ {TYPE_5__ bools; } ;
typedef TYPE_6__ settings_t ;
struct TYPE_12__ {struct retro_subsystem_info* data; } ;
struct TYPE_18__ {TYPE_1__ subsystem; } ;
typedef TYPE_7__ rarch_system_info_t ;
struct TYPE_19__ {char* path; scalar_t__ type_default; int list; int * exts; int label; } ;
typedef TYPE_8__ menu_displaylist_info_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
typedef enum menu_displaylist_ctl_state { ____Placeholder_menu_displaylist_ctl_state } menu_displaylist_ctl_state ;
struct TYPE_14__ {int i; } ;
struct TYPE_15__ {char* data; TYPE_3__ attr; } ;
struct TYPE_13__ {int * valid_extensions; } ;



 int DISPLAYLIST_IMAGES ;

 int FILEBROWSER_SELECT_COLLECTION ;

 int FILEBROWSER_SELECT_FILE_SUBSYSTEM ;
 int FILEBROWSER_SELECT_FONT ;
 int FILEBROWSER_SELECT_IMAGE ;
 int FILE_TYPE_CARCHIVE ;

 int FILE_TYPE_FONT ;


 int FILE_TYPE_IN_CARCHIVE ;


 int FILE_TYPE_NONE ;
 int FILE_TYPE_PARENT_DIRECTORY ;

 int FILE_TYPE_PLAYLIST_COLLECTION ;
 int FILE_TYPE_SCAN_DIRECTORY ;
 scalar_t__ FILE_TYPE_SHADER ;
 scalar_t__ FILE_TYPE_SHADER_PRESET ;
 int FILE_TYPE_USE_DIRECTORY ;
 int MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY ;
 int MENU_ENUM_LABEL_FILE_BROWSER_IMAGE ;
 int MENU_ENUM_LABEL_FILE_BROWSER_IMAGE_OPEN_WITH_VIEWER ;
 int MENU_ENUM_LABEL_FILE_BROWSER_MOVIE_OPEN ;
 int MENU_ENUM_LABEL_FILE_BROWSER_MUSIC_OPEN ;
 int MENU_ENUM_LABEL_FILE_BROWSER_PLAIN_FILE ;
 int MENU_ENUM_LABEL_NO_ITEMS ;
 int MENU_ENUM_LABEL_PARENT_DIRECTORY ;
 int MENU_ENUM_LABEL_SCAN_FILE ;
 int MENU_ENUM_LABEL_SCAN_THIS_DIRECTORY ;
 int MENU_ENUM_LABEL_USE_THIS_DIRECTORY ;
 int MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND ;
 int MENU_ENUM_LABEL_VALUE_NO_ITEMS ;
 int MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY ;
 int MENU_ENUM_LABEL_VALUE_SCAN_THIS_DIRECTORY ;
 int MENU_ENUM_LABEL_VALUE_UNABLE_TO_READ_COMPRESSED_FILE ;
 int MENU_ENUM_LABEL_VALUE_USE_THIS_DIRECTORY ;
 int MENU_SETTING_NO_ITEM ;
 int MSG_UNKNOWN ;




 int RARCH_CONTENT_MUSIC ;


 TYPE_6__* config_get_ptr () ;
 int content_get_subsystem () ;
 size_t content_get_subsystem_rom_id () ;
 struct string_list* dir_list_new (char const*,int *,int,int ,int,int) ;
 int dir_list_sort (struct string_list*,int) ;
 struct string_list* file_archive_get_file_list (char const*,int *) ;
 int filebrowser_types ;
 int menu_entries_append_enum (int ,char const*,char const*,int,int,int ,int ) ;
 int menu_entries_prepend (int ,char const*,char const*,int,int ,int ,int ) ;
 char const* msg_hash_to_str (int) ;
 char* path_basename (char const*) ;
 int path_is_compressed_file (char const*) ;
 int path_is_media_type (char const*) ;
 TYPE_7__* runloop_get_system_info () ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (int ,char const*) ;
 int string_list_free (struct string_list*) ;
 scalar_t__ subsystem_current_count ;
 struct retro_subsystem_info* subsystem_data ;

void filebrowser_parse(menu_displaylist_info_t *info, unsigned type_data)
{
   size_t i, list_size;
   struct string_list *str_list = ((void*)0);
   unsigned items_found = 0;
   unsigned files_count = 0;
   unsigned dirs_count = 0;
   settings_t *settings = config_get_ptr();
   enum menu_displaylist_ctl_state type = (enum menu_displaylist_ctl_state)
                                          type_data;
   const char *path = info ? info->path : ((void*)0);
   bool path_is_compressed = !string_is_empty(path)
      ? path_is_compressed_file(path) : 0;
   bool filter_ext =
      settings->bools.menu_navigation_browser_filter_supported_extensions_enable;

   rarch_system_info_t *system = runloop_get_system_info();
   const struct retro_subsystem_info *subsystem;


   if (system->subsystem.data)
      subsystem = system->subsystem.data + content_get_subsystem();

   else
      subsystem = subsystem_data + content_get_subsystem();

   if (info && (info->type_default == FILE_TYPE_SHADER_PRESET ||
                info->type_default == FILE_TYPE_SHADER))
      filter_ext = 1;

   if (info && string_is_equal(info->label,
            msg_hash_to_str(MENU_ENUM_LABEL_SCAN_FILE)))
      filter_ext = 0;

   if (info && path_is_compressed)
   {
      if (filebrowser_types != FILEBROWSER_SELECT_FILE_SUBSYSTEM)
         str_list = file_archive_get_file_list(path, info->exts);
      else if (subsystem && subsystem_current_count > 0)
         str_list = file_archive_get_file_list(path, subsystem->roms[content_get_subsystem_rom_id()].valid_extensions);
   }
   else if (!string_is_empty(path))
   {
      if (filebrowser_types == FILEBROWSER_SELECT_FILE_SUBSYSTEM)
      {
         if (subsystem && subsystem_current_count > 0 && content_get_subsystem_rom_id() < subsystem->num_roms)
            str_list = dir_list_new(path,
                  (filter_ext && info) ? subsystem->roms[content_get_subsystem_rom_id()].valid_extensions : ((void*)0),
                  1, settings->bools.show_hidden_files, 1, 0);
      }
      else
         str_list = dir_list_new(path,
               (filter_ext && info) ? info->exts : ((void*)0),
               1, settings->bools.show_hidden_files, 1, 0);
   }

   switch (filebrowser_types)
   {
      case 141:
         break;
      case 140:
         if (info)
            menu_entries_prepend(info->list,
                  msg_hash_to_str(MENU_ENUM_LABEL_VALUE_USE_THIS_DIRECTORY),
                  msg_hash_to_str(MENU_ENUM_LABEL_USE_THIS_DIRECTORY),
                  MENU_ENUM_LABEL_USE_THIS_DIRECTORY,
                  FILE_TYPE_USE_DIRECTORY, 0 ,0);
         break;
      default:
         break;
   }

   if (!str_list)
   {
      const char *str = path_is_compressed
         ? msg_hash_to_str(MENU_ENUM_LABEL_VALUE_UNABLE_TO_READ_COMPRESSED_FILE)
         : msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND);

      if (info)
         menu_entries_append_enum(info->list, str, "",
               MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, 0, 0, 0);
      goto end;
   }

   dir_list_sort(str_list, 1);

   list_size = str_list->size;

   if (list_size == 0)
   {
      string_list_free(str_list);
      str_list = ((void*)0);
   }
   else
   {
      for (i = 0; i < list_size; i++)
      {
         char label[64];
         bool is_dir = 0;
         enum msg_hash_enums enum_idx = MSG_UNKNOWN;
         enum msg_file_type file_type = FILE_TYPE_NONE;
         const char *path = str_list->elems[i].data;

         label[0] = '\0';

         switch (str_list->elems[i].attr.i)
         {
            case 129:
               file_type = 139;
               break;
            case 133:
               file_type = FILE_TYPE_CARCHIVE;
               break;
            case 132:
               file_type = FILE_TYPE_IN_CARCHIVE;
               break;
            case 128:
            default:
               if (filebrowser_types == FILEBROWSER_SELECT_FONT)
                  file_type = FILE_TYPE_FONT;
               else
                  file_type = (enum msg_file_type)info->type_default;
               switch (type)
               {



                  case 142:
                     if (path_is_compressed_file(path))
                        file_type = FILE_TYPE_CARCHIVE;
                     break;
                  default:
                     break;
               }
               break;
         }

         is_dir = (file_type == 139);

         if (!is_dir)
         {
            if (filebrowser_types == 140)
               continue;
            if (filebrowser_types == 141)
               continue;
         }



         if (!string_is_empty(path) && !path_is_compressed)
            path = path_basename(path);

         if (filebrowser_types == FILEBROWSER_SELECT_COLLECTION)
         {
            if (is_dir)
               file_type = 139;
            else
               file_type = FILE_TYPE_PLAYLIST_COLLECTION;
         }

         if (!is_dir && path_is_media_type(path) == RARCH_CONTENT_MUSIC)
            file_type = 135;
         else if (!is_dir &&
               (settings->bools.multimedia_builtin_mediaplayer_enable ||
                settings->bools.multimedia_builtin_imageviewer_enable))
         {
            switch (path_is_media_type(path))
            {
               case 130:




                  break;
               case 131:







                  if (filebrowser_types == FILEBROWSER_SELECT_IMAGE)
                     file_type = 138;
                  break;
               default:
                  break;
            }
         }

         switch (file_type)
         {
            case 134:



               files_count++;
               break;
            case 136:
               enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_MOVIE_OPEN;
               files_count++;
               break;
            case 135:
               enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_MUSIC_OPEN;
               files_count++;
               break;
            case 138:
               enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_IMAGE;
               files_count++;
               break;
            case 137:
               enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_IMAGE_OPEN_WITH_VIEWER;
               files_count++;
               break;
            case 139:
               enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY;
               dirs_count++;
               break;
            default:
               break;
         }

         items_found++;
         menu_entries_append_enum(info->list, path, label,
               enum_idx,
               file_type, 0, 0);
      }
   }

   if (str_list && str_list->size > 0)
      string_list_free(str_list);

   if (items_found == 0)
   {
      menu_entries_append_enum(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NO_ITEMS),
            msg_hash_to_str(MENU_ENUM_LABEL_NO_ITEMS),
            MENU_ENUM_LABEL_NO_ITEMS,
            MENU_SETTING_NO_ITEM, 0, 0);
   }

end:
   if (info && !path_is_compressed)
      menu_entries_prepend(info->list,
            msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY),
            path,
            MENU_ENUM_LABEL_PARENT_DIRECTORY,
            FILE_TYPE_PARENT_DIRECTORY, 0, 0);
}
