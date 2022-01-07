
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rarch_setting_t ;
typedef int menu_path_new ;
struct TYPE_3__ {char* scratch2_buf; char const* scratch_buf; } ;
typedef TYPE_1__ menu_handle_t ;
typedef int full_path_new ;
typedef int file_list_t ;


 int CORE_TYPE_PLAIN ;
 scalar_t__ FILEBROWSER_SELECT_FILE_SUBSYSTEM ;

 int MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN ;
 int MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE ;
 int MENU_SETTINGS ;
 int PATH_MAX_LENGTH ;
 scalar_t__ ST_PATH ;
 int action_ok_set_path (char const*,char const*,unsigned int,size_t,size_t) ;
 int content_add_subsystem (char*) ;
 int default_action_ok_load_content_with_core_from_menu (char*,int ) ;
 int file_list_get_last (int *,char const**,char const**,int *,int *) ;
 scalar_t__ filebrowser_get_type () ;
 int fill_pathname_join (char*,char*,char const*,int) ;
 int fill_pathname_join_delim (char*,char*,char const*,char,int) ;
 int menu_cbs_exit () ;
 TYPE_1__* menu_driver_get_ptr () ;
 int menu_entries_flush_stack (int *,int ) ;
 int * menu_entries_get_menu_stack_ptr (int ) ;
 int * menu_setting_find (char const*) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ setting_get_type (int *) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int action_ok_file_load(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char menu_path_new[PATH_MAX_LENGTH];
   char full_path_new[PATH_MAX_LENGTH];
   const char *menu_label = ((void*)0);
   const char *menu_path = ((void*)0);
   rarch_setting_t *setting = ((void*)0);
   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);

   menu_path_new[0] = full_path_new[0] = '\0';

   if (filebrowser_get_type() == FILEBROWSER_SELECT_FILE_SUBSYSTEM)
   {



      menu_handle_t *menu = menu_driver_get_ptr();
      if (!menu)
         return menu_cbs_exit();

      fill_pathname_join(menu_path_new,
            menu->scratch2_buf, menu->scratch_buf,
            sizeof(menu_path_new));
      switch (type)
      {
         case 128:
            fill_pathname_join_delim(full_path_new, menu_path_new, path,
                  '#',sizeof(full_path_new));
            break;
         default:
            fill_pathname_join(full_path_new, menu_path_new, path,
                  sizeof(full_path_new));
            break;
      }

      content_add_subsystem(full_path_new);
      menu_entries_flush_stack(((void*)0), MENU_SETTINGS);
      return 0;
   }

   file_list_get_last(menu_stack, &menu_path, &menu_label, ((void*)0), ((void*)0));

   if (!string_is_empty(menu_label))
      setting = menu_setting_find(menu_label);

   if (setting_get_type(setting) == ST_PATH)
      return action_ok_set_path(path, label, type, idx, entry_idx);

   if (!string_is_empty(menu_path))
      strlcpy(menu_path_new, menu_path, sizeof(menu_path_new));

   if (!string_is_empty(menu_label))
   {
      if (
            string_is_equal(menu_label,
               msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE)) ||
            string_is_equal(menu_label,
               msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN))
         )
      {
         menu_handle_t *menu = menu_driver_get_ptr();
         if (!menu)
            return menu_cbs_exit();

         fill_pathname_join(menu_path_new,
               menu->scratch2_buf, menu->scratch_buf,
               sizeof(menu_path_new));
      }
   }

   switch (type)
   {
      case 128:
         fill_pathname_join_delim(full_path_new, menu_path_new, path,
               '#',sizeof(full_path_new));
         break;
      default:
         fill_pathname_join(full_path_new, menu_path_new, path,
               sizeof(full_path_new));
         break;
   }

   return default_action_ok_load_content_with_core_from_menu(full_path_new,
         CORE_TYPE_PLAIN);
}
