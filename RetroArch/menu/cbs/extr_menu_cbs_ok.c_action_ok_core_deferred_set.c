
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct playlist_entry {char* core_path; char* core_name; int member_0; } ;
struct TYPE_9__ {int show_hidden_files; } ;
struct TYPE_8__ {int directory_libretro; int path_libretro_info; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ paths; } ;
typedef TYPE_4__ settings_t ;
typedef int resolved_core_path ;
typedef int msg ;
struct TYPE_10__ {int unsigned_var; } ;
struct TYPE_12__ {TYPE_3__ scratchpad; } ;
typedef TYPE_5__ menu_handle_t ;
typedef int ext_name ;
typedef int core_display_name ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_SET_CORE_ASSOCIATION ;
 int PATH_MAX_LENGTH ;
 int PLAYLIST_SAVE ;
 int command_playlist_update_write (int *,int ,struct playlist_entry*) ;
 TYPE_4__* config_get_ptr () ;
 int core_info_get_name (char const*,char*,int,int ,int ,char*,int ,int) ;
 int frontend_driver_get_core_extension (char*,int) ;
 int menu_cbs_exit () ;
 TYPE_5__* menu_driver_get_ptr () ;
 int menu_entries_pop_stack (size_t*,int ,int) ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (size_t) ;
 char const* msg_hash_to_str (int ) ;
 int playlist_resolve_path (int ,char*,int) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int action_ok_core_deferred_set(const char *new_core_path,
      const char *content_label, unsigned type, size_t idx, size_t entry_idx)
{
   char ext_name[255];
   char core_display_name[PATH_MAX_LENGTH];
   char resolved_core_path[PATH_MAX_LENGTH];
   char msg[PATH_MAX_LENGTH];
   settings_t *settings = config_get_ptr();
   size_t selection = menu_navigation_get_selection();
   struct playlist_entry entry = {0};
   menu_handle_t *menu = menu_driver_get_ptr();

   ext_name[0] = '\0';
   core_display_name[0] = '\0';
   resolved_core_path[0] = '\0';
   msg[0] = '\0';

   if (!menu)
      return menu_cbs_exit();

   if (!frontend_driver_get_core_extension(ext_name, sizeof(ext_name)))
      return menu_cbs_exit();

   core_info_get_name(new_core_path,
         core_display_name, sizeof(core_display_name),
         settings->paths.path_libretro_info,
         settings->paths.directory_libretro,
         ext_name,
         settings->bools.show_hidden_files,
         1);

    strlcpy(resolved_core_path, new_core_path, sizeof(resolved_core_path));
    playlist_resolve_path(PLAYLIST_SAVE, resolved_core_path, sizeof(resolved_core_path));



   entry.core_path = (char*)resolved_core_path;
   entry.core_name = core_display_name;

   command_playlist_update_write(
         ((void*)0),
         menu->scratchpad.unsigned_var,
         &entry);


   strlcpy(msg, msg_hash_to_str(MSG_SET_CORE_ASSOCIATION), sizeof(msg));
   strlcat(msg, core_display_name, sizeof(msg));
   runloop_msg_queue_push(msg, 1, 100, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   menu_entries_pop_stack(&selection, 0, 1);
   menu_navigation_set_selection(selection);

   return menu_cbs_exit();
}
