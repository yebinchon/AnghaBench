
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;
struct retro_system_info {char const* library_name; } ;
typedef int playlist_t ;
struct TYPE_11__ {int rpl_entry_selection_ptr; } ;
typedef TYPE_3__ menu_handle_t ;
struct TYPE_9__ {char const* label; } ;
struct TYPE_12__ {TYPE_1__ name; } ;
typedef TYPE_4__ global_t ;
typedef int core_path ;
typedef int core_name ;
struct TYPE_13__ {char* path; TYPE_2__* inf; } ;
typedef TYPE_5__ core_info_ctx_find_t ;
typedef int content_label ;
struct TYPE_10__ {char const* display_name; } ;


 int CMD_EVENT_ADD_TO_FAVORITES ;
 int PATH_MAX_LENGTH ;
 int RARCH_PATH_CONTENT ;
 int RARCH_PATH_CORE ;
 int command_event (int ,void*) ;
 scalar_t__ core_info_find (TYPE_5__*,char*) ;
 int fill_short_pathname_representation (char*,char const*,int) ;
 TYPE_4__* global_get_ptr () ;
 int menu_cbs_exit () ;
 TYPE_3__* menu_driver_get_ptr () ;
 char* path_get (int ) ;
 int * playlist_get_cached () ;
 int playlist_get_crc32 (int *,int ,char const**) ;
 int playlist_get_db_name (int *,int ,char const**) ;
 scalar_t__ playlist_index_is_valid (int *,int ,char const*,char*) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 scalar_t__ string_is_empty (char const*) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int action_ok_add_to_favorites(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   const char *content_path = path_get(RARCH_PATH_CONTENT);
   int ret = 0;



   if (!string_is_empty(content_path))
   {
      global_t *global = global_get_ptr();
      struct retro_system_info *system = runloop_get_libretro_system_info();
      struct string_list *str_list = ((void*)0);
      const char *crc32 = ((void*)0);
      const char *db_name = ((void*)0);

      union string_list_elem_attr attr;
      char content_label[PATH_MAX_LENGTH];
      char core_path[PATH_MAX_LENGTH];
      char core_name[PATH_MAX_LENGTH];

      content_label[0] = '\0';
      core_path[0] = '\0';
      core_name[0] = '\0';


      attr.i = 0;
      str_list = string_list_new();
      if (!str_list)
         return 0;




      if (global)
         if (!string_is_empty(global->name.label))
            strlcpy(content_label, global->name.label, sizeof(content_label));

      if (string_is_empty(content_label))
         fill_short_pathname_representation(content_label, content_path, sizeof(content_label));


      if (system)
      {
         if (!string_is_empty(path_get(RARCH_PATH_CORE)))
         {
            core_info_ctx_find_t core_info;


            strlcpy(core_path, path_get(RARCH_PATH_CORE), sizeof(core_path));



            core_info.inf = ((void*)0);
            core_info.path = core_path;

            if (core_info_find(&core_info, core_path))
               if (!string_is_empty(core_info.inf->display_name))
                  strlcpy(core_name, core_info.inf->display_name, sizeof(core_name));
         }


         if (string_is_empty(core_name) && !string_is_empty(system->library_name))
            strlcpy(core_name, system->library_name, sizeof(core_name));
      }

      if (string_is_empty(core_path) || string_is_empty(core_name))
      {
         strlcpy(core_path, "DETECT", sizeof(core_path));
         strlcpy(core_name, "DETECT", sizeof(core_name));
      }


      {
         menu_handle_t *menu = menu_driver_get_ptr();
         if (menu)
         {
            playlist_t *playlist_curr = playlist_get_cached();

            if (playlist_index_is_valid(playlist_curr, menu->rpl_entry_selection_ptr, content_path, core_path))
            {
               playlist_get_crc32(playlist_curr, menu->rpl_entry_selection_ptr, &crc32);
               playlist_get_db_name(playlist_curr, menu->rpl_entry_selection_ptr, &db_name);
            }
         }
      }
      string_list_append(str_list, content_path, attr);
      string_list_append(str_list, content_label, attr);
      string_list_append(str_list, core_path, attr);
      string_list_append(str_list, core_name, attr);
      string_list_append(str_list, !string_is_empty(crc32) ? crc32 : "", attr);
      string_list_append(str_list, !string_is_empty(db_name) ? db_name : "", attr);


      if (!command_event(CMD_EVENT_ADD_TO_FAVORITES, (void*)str_list))
         ret = menu_cbs_exit();


      string_list_free(str_list);
      str_list = ((void*)0);
   }

   return ret;
}
