
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct string_list {size_t size; TYPE_3__* elems; } ;
struct TYPE_8__ {int show_hidden_files; } ;
struct TYPE_11__ {TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
typedef int salamander_name ;
typedef int menu_handle_t ;
struct TYPE_12__ {char* path; int download_core; int need_sort; int list; int label; int exts; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
typedef int core_info_list_t ;
struct TYPE_9__ {int i; } ;
struct TYPE_10__ {char const* data; TYPE_2__ attr; } ;


 unsigned int FILE_TYPE_CORE ;
 int FILE_TYPE_DIRECTORY ;
 int FILE_TYPE_NONE ;
 int FILE_TYPE_PARENT_DIRECTORY ;
 int MENU_ENUM_LABEL_CORE_LIST ;
 int MENU_ENUM_LABEL_FILE_BROWSER_CORE ;
 int MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY ;
 int MENU_ENUM_LABEL_FILE_BROWSER_SIDELOAD_CORE ;
 int MENU_ENUM_LABEL_PARENT_DIRECTORY ;
 int MENU_ENUM_LABEL_SIDELOAD_CORE_LIST ;
 int MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND ;
 int MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY ;
 int MSG_UNKNOWN ;
 int PATH_MAX_LENGTH ;




 TYPE_4__* config_get_ptr () ;
 int core_info_get_list (int **) ;
 scalar_t__ core_info_list_get_display_name (int *,char*,char*,size_t) ;
 int dir_list_append (struct string_list*,char const*,int ,int,int ,int,int) ;
 int dir_list_sort (struct string_list*,int) ;
 size_t file_list_get_size (int ) ;
 int file_list_set_alt_at_offset (int ,size_t,char*) ;
 int fill_pathname_join (char*,char const*,char const*,size_t) ;
 int fill_pathname_parent_dir (char*,char const*,int) ;
 int free (char*) ;
 scalar_t__ frontend_driver_get_salamander_basename (char*,int) ;
 scalar_t__ frontend_driver_has_fork () ;
 scalar_t__ frontend_driver_parse_drive_list (int ,int) ;
 scalar_t__ malloc (size_t) ;
 int menu_entries_append_enum (int ,char const*,char*,int,int,int ,int ) ;
 int menu_entries_get_at_offset (int ,size_t,char const**,int *,unsigned int*,int *,int *) ;
 int menu_entries_get_last_stack (char const**,int *,int *,int *,int *) ;
 int menu_entries_prepend (int ,char*,char const*,int ,int ,int ,int ) ;
 char* msg_hash_to_str (int) ;
 char* path_basename (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (int ,char*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 int uwp_fill_installed_core_packages (struct string_list*) ;

__attribute__((used)) static unsigned menu_displaylist_parse_cores(
      menu_handle_t *menu,
      menu_displaylist_info_t *info)
{
   size_t i, list_size;
   struct string_list *str_list = ((void*)0);
   unsigned items_found = 0;
   settings_t *settings = config_get_ptr();
   const char *path = info->path;
   bool ok;

   if (string_is_empty(path))
   {
      if (frontend_driver_parse_drive_list(info->list, 1) != 0)
         menu_entries_append_enum(info->list, "/", "",
               MSG_UNKNOWN, FILE_TYPE_DIRECTORY, 0, 0);
      items_found++;
      return items_found;
   }

   str_list = string_list_new();
   ok = dir_list_append(str_list, path, info->exts,
         1, settings->bools.show_hidden_files, 0, 0);
   if (!ok)
   {
      string_list_free(str_list);
      str_list = ((void*)0);
   }


   {
      char *out_dir = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

      out_dir[0] = '\0';

      fill_pathname_parent_dir(out_dir, path,
            PATH_MAX_LENGTH * sizeof(char));

      if (string_is_empty(out_dir))
      {
         menu_entries_prepend(info->list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY),
               path,
               MENU_ENUM_LABEL_PARENT_DIRECTORY,
               FILE_TYPE_PARENT_DIRECTORY, 0, 0);
      }

      free(out_dir);
   }

   if (!str_list)
   {
      const char *str = msg_hash_to_str(
            MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND);
      menu_entries_append_enum(info->list, str, "",
            MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, 0, 0, 0);
      items_found++;
      return items_found;
   }

   if (string_is_equal(info->label, msg_hash_to_str(MENU_ENUM_LABEL_CORE_LIST)))
      info->download_core = 1;

   dir_list_sort(str_list, 1);

   list_size = str_list->size;

   if (list_size == 0)
   {
      string_list_free(str_list);
      return 0;
   }

   for (i = 0; i < list_size; i++)
   {
      bool is_dir;
      char label[64];
      const char *path = ((void*)0);
      enum msg_hash_enums enum_idx = MSG_UNKNOWN;
      enum msg_file_type file_type = FILE_TYPE_NONE;

      label[0] = '\0';

      switch (str_list->elems[i].attr.i)
      {
         case 129:
            file_type = FILE_TYPE_DIRECTORY;
            break;
         case 131:
         case 130:

            continue;
         case 128:
         default:
            file_type = FILE_TYPE_CORE;
            break;
      }

      is_dir = (file_type == FILE_TYPE_DIRECTORY);


      path = str_list->elems[i].data;

      if (!string_is_empty(path))
         path = path_basename(path);


      if (frontend_driver_has_fork())
      {
         char salamander_name[PATH_MAX_LENGTH];

         salamander_name[0] = '\0';

         if (frontend_driver_get_salamander_basename(
                  salamander_name, sizeof(salamander_name)))
         {
            if (string_is_equal_noncase(path, salamander_name))
               continue;
         }

         if (is_dir)
            continue;
      }


      if (is_dir)
      {
         file_type = FILE_TYPE_DIRECTORY;
         enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY;
      }
      else
      {
         file_type = FILE_TYPE_CORE;
         if (string_is_equal(info->label, msg_hash_to_str(MENU_ENUM_LABEL_SIDELOAD_CORE_LIST)))
            enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_SIDELOAD_CORE;
         else
            enum_idx = MENU_ENUM_LABEL_FILE_BROWSER_CORE;
      }

      items_found++;

      menu_entries_append_enum(info->list, path, label,
            enum_idx,
            file_type, 0, 0);
   }

   string_list_free(str_list);

   if (items_found == 0)
      return 0;

   {
      core_info_list_t *list = ((void*)0);
      const char *dir = ((void*)0);

      core_info_get_list(&list);

      menu_entries_get_last_stack(&dir, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

      list_size = file_list_get_size(info->list);

      for (i = 0; i < list_size; i++)
      {
         unsigned type = 0;
         const char *path = ((void*)0);

         menu_entries_get_at_offset(info->list,
               i, &path, ((void*)0), &type, ((void*)0),
               ((void*)0));

         if (type == FILE_TYPE_CORE)
         {
            size_t path_size = PATH_MAX_LENGTH * sizeof(char);
            char *core_path = (char*)malloc(path_size);
            char *display_name = (char*)malloc(path_size);
            core_path[0] =
            display_name[0] = '\0';

            fill_pathname_join(core_path, dir, path, path_size);

            if (core_info_list_get_display_name(list,
                     core_path, display_name, path_size))
               file_list_set_alt_at_offset(info->list, i, display_name);

            free(core_path);
            free(display_name);
         }
      }
      info->need_sort = 1;
   }

   return items_found;
}
