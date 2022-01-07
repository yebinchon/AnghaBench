
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct retro_system_info {char* library_name; } ;
struct TYPE_4__ {char const* directory_input_remapping; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int file ;
typedef int directory ;
typedef int content_dir ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_ERROR_REMOVING_REMAP_FILE ;
 int MSG_ERROR_SAVING_REMAP_FILE ;
 int MSG_REMAP_FILE_REMOVED_SUCCESSFULLY ;
 int MSG_REMAP_FILE_SAVED_SUCCESSFULLY ;
 int PATH_MAX_LENGTH ;
 int RARCH_CTL_IS_REMAPS_CONTENT_DIR_ACTIVE ;
 int RARCH_CTL_IS_REMAPS_CORE_ACTIVE ;
 int RARCH_CTL_IS_REMAPS_GAME_ACTIVE ;
 int RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE ;
 int RARCH_CTL_SET_REMAPS_CORE_ACTIVE ;
 int RARCH_CTL_SET_REMAPS_GAME_ACTIVE ;
 int RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE ;
 int RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE ;
 int RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE ;
 int RARCH_PATH_BASENAME ;
 TYPE_2__* config_get_ptr () ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 int fill_pathname_parent_dir_name (char*,int ,int) ;
 scalar_t__ input_remapping_remove_file (char*) ;
 scalar_t__ input_remapping_save_file (char*) ;
 int input_remapping_set_defaults (int) ;
 int msg_hash_to_str (int ) ;
 char* path_basename (int ) ;
 int path_get (int ) ;
 int path_is_directory (char*) ;
 int path_mkdir (char*) ;
 scalar_t__ rarch_ctl (int ,int *) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static int generic_action_ok_remap_file_operation(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx,
      unsigned action_type)
{
   char directory[PATH_MAX_LENGTH];
   char file[PATH_MAX_LENGTH];
   char content_dir[PATH_MAX_LENGTH];
   settings_t *settings = config_get_ptr();
   struct retro_system_info *system = runloop_get_libretro_system_info();
   const char *core_name = system ? system->library_name : ((void*)0);

   directory[0] = file[0] = '\0';

   if (!string_is_empty(core_name))
      fill_pathname_join(
            directory,
            settings->paths.directory_input_remapping,
            core_name,
            sizeof(directory));

   switch (action_type)
   {
      case 129:
      case 132:
         if (!string_is_empty(core_name))
            fill_pathname_join(file, core_name, core_name, sizeof(file));
         break;
      case 128:
      case 131:
         if (!string_is_empty(core_name))
            fill_pathname_join(file, core_name,
                  path_basename(path_get(RARCH_PATH_BASENAME)), sizeof(file));
         break;
      case 130:
      case 133:
         if (!string_is_empty(core_name))
         {
            fill_pathname_parent_dir_name(content_dir, path_get(RARCH_PATH_BASENAME), sizeof(content_dir));
            fill_pathname_join(file, core_name,
                  content_dir, sizeof(file));
         }
         break;
   }

   if (!path_is_directory(directory))
       path_mkdir(directory);

   if (action_type < 132)
   {
      if (input_remapping_save_file(file))
      {
         if (action_type == 129)
            rarch_ctl(RARCH_CTL_SET_REMAPS_CORE_ACTIVE, ((void*)0));
         else if (action_type == 128)
            rarch_ctl(RARCH_CTL_SET_REMAPS_GAME_ACTIVE, ((void*)0));
         else if (action_type == 130)
            rarch_ctl(RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE, ((void*)0));

         runloop_msg_queue_push(
               msg_hash_to_str(MSG_REMAP_FILE_SAVED_SUCCESSFULLY),
               1, 100, 1,
               ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
      else
         runloop_msg_queue_push(
               msg_hash_to_str(MSG_ERROR_SAVING_REMAP_FILE),
               1, 100, 1,
               ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
   else
   {
      if (input_remapping_remove_file(file))
      {
         if (action_type == 132 &&
               rarch_ctl(RARCH_CTL_IS_REMAPS_CORE_ACTIVE, ((void*)0)))
         {
            rarch_ctl(RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE, ((void*)0));
            input_remapping_set_defaults(1);
         }

         else if (action_type == 131 &&
               rarch_ctl(RARCH_CTL_IS_REMAPS_GAME_ACTIVE, ((void*)0)))
         {
            rarch_ctl(RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE, ((void*)0));
            input_remapping_set_defaults(1);
         }

         else if (action_type == 133 &&
               rarch_ctl(RARCH_CTL_IS_REMAPS_CONTENT_DIR_ACTIVE, ((void*)0)))
         {
            rarch_ctl(RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE, ((void*)0));
            input_remapping_set_defaults(1);
         }

         runloop_msg_queue_push(
               msg_hash_to_str(MSG_REMAP_FILE_REMOVED_SUCCESSFULLY),
               1, 100, 1,
               ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
      else
         runloop_msg_queue_push(
               msg_hash_to_str(MSG_ERROR_REMOVING_REMAP_FILE),
               1, 100, 1,
               ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
   return 0;
}
