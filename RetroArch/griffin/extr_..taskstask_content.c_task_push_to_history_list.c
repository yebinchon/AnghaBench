
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int subsystem_name ;
struct string_list {int dummy; } ;
struct retro_system_info {char* library_name; } ;
struct playlist_entry {char* path; char* label; char* core_path; char* core_name; char* crc32; char* db_name; char* subsystem_ident; char* subsystem_name; struct string_list* subsystem_roms; int member_0; } ;
struct TYPE_13__ {scalar_t__ history_list_enable; } ;
struct TYPE_14__ {TYPE_2__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef int playlist_t ;
struct TYPE_15__ {int rpl_entry_selection_ptr; } ;
typedef TYPE_4__ menu_handle_t ;
struct TYPE_12__ {char const* label; } ;
struct TYPE_16__ {TYPE_1__ name; } ;
typedef TYPE_5__ global_t ;
struct TYPE_17__ {char* display_name; } ;
typedef TYPE_6__ core_info_t ;
struct TYPE_18__ {int * image_history; int * music_history; int * video_history; int * content_history; } ;


 int PATH_MAX_LENGTH ;



 int RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ;
 int RARCH_PATH_CONTENT ;
 int RARCH_PATH_CORE ;
 int RARCH_PATH_SUBSYSTEM ;
 int command_playlist_push_write (int *,struct playlist_entry*) ;
 TYPE_3__* config_get_ptr () ;
 int content_get_status (int*,int*) ;
 int content_get_subsystem_friendly_name (char*,char*,int) ;
 int core_info_get_current_core (TYPE_6__**) ;
 int free (char*) ;
 TYPE_9__ g_defaults ;
 TYPE_5__* global_get_ptr () ;
 scalar_t__ malloc (size_t) ;
 int menu_driver_ctl (int ,int *) ;
 TYPE_4__* menu_driver_get_ptr () ;
 char* path_get (int ) ;
 scalar_t__ path_get_subsystem_list () ;
 int path_is_media_type (char*) ;
 int path_resolve_realpath (char*,size_t,int) ;
 int * playlist_get_cached () ;
 int playlist_get_crc32 (int *,int ,char const**) ;
 int playlist_get_db_name (int *,int ,char const**) ;
 int playlist_index_is_valid (int *,int ,char*,char const*) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void task_push_to_history_list(
      bool launched_from_menu,
      bool launched_from_cli)
{
   bool contentless = 0;
   bool is_inited = 0;

   content_get_status(&contentless, &is_inited);


   if (is_inited || contentless)
   {
      size_t tmp_size = PATH_MAX_LENGTH * sizeof(char);
      char *tmp = (char*)malloc(tmp_size);
      const char *path_content = path_get(RARCH_PATH_CONTENT);
      struct retro_system_info *info = runloop_get_libretro_system_info();

      tmp[0] = '\0';

      if (!string_is_empty(path_content))
         strlcpy(tmp, path_content, tmp_size);



      if (!launched_from_menu && !string_is_empty(tmp))
         path_resolve_realpath(tmp, tmp_size, 1);







      if (info && !string_is_empty(tmp))
      {
         const char *core_path = ((void*)0);
         const char *core_name = ((void*)0);
         const char *label = ((void*)0);
         const char *crc32 = ((void*)0);
         const char *db_name = ((void*)0);
         playlist_t *playlist_hist = g_defaults.content_history;
         settings_t *settings = config_get_ptr();
         global_t *global = global_get_ptr();

         switch (path_is_media_type(tmp))
         {
            case 129:





               break;
            case 128:
               playlist_hist = g_defaults.music_history;
               core_name = "musicplayer";
               core_path = "builtin";
               break;
            case 130:





               break;
            default:
            {
               core_info_t *core_info = ((void*)0);



               core_info_get_current_core(&core_info);


               core_path = path_get(RARCH_PATH_CORE);

               if (core_info)
                  core_name = core_info->display_name;

               if (string_is_empty(core_name))
                  core_name = info->library_name;
               break;
            }
         }

         if (global && !string_is_empty(global->name.label))
            label = global->name.label;

         if (
              settings && settings->bools.history_list_enable
               && playlist_hist)
         {
            char subsystem_name[PATH_MAX_LENGTH];
            struct playlist_entry entry = {0};

            subsystem_name[0] = '\0';

            content_get_subsystem_friendly_name(path_get(RARCH_PATH_SUBSYSTEM), subsystem_name, sizeof(subsystem_name));


            entry.path = (char*)tmp;
            entry.label = (char*)label;
            entry.core_path = (char*)core_path;
            entry.core_name = (char*)core_name;
            entry.crc32 = (char*)crc32;
            entry.db_name = (char*)db_name;
            entry.subsystem_ident = (char*)path_get(RARCH_PATH_SUBSYSTEM);
            entry.subsystem_name = (char*)subsystem_name;
            entry.subsystem_roms = (struct string_list*)path_get_subsystem_list();

            command_playlist_push_write(
                  playlist_hist, &entry);
         }
      }

      free(tmp);
   }
}
