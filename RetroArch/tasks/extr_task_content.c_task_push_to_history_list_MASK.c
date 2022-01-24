#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subsystem_name ;
struct string_list {int dummy; } ;
struct retro_system_info {char* library_name; } ;
struct playlist_entry {char* path; char* label; char* core_path; char* core_name; char* crc32; char* db_name; char* subsystem_ident; char* subsystem_name; struct string_list* subsystem_roms; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {scalar_t__ history_list_enable; } ;
struct TYPE_14__ {TYPE_2__ bools; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_15__ {int /*<<< orphan*/  rpl_entry_selection_ptr; } ;
typedef  TYPE_4__ menu_handle_t ;
struct TYPE_12__ {char const* label; } ;
struct TYPE_16__ {TYPE_1__ name; } ;
typedef  TYPE_5__ global_t ;
struct TYPE_17__ {char* display_name; } ;
typedef  TYPE_6__ core_info_t ;
struct TYPE_18__ {int /*<<< orphan*/ * image_history; int /*<<< orphan*/ * music_history; int /*<<< orphan*/ * video_history; int /*<<< orphan*/ * content_history; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
#define  RARCH_CONTENT_IMAGE 130 
#define  RARCH_CONTENT_MOVIE 129 
#define  RARCH_CONTENT_MUSIC 128 
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 int /*<<< orphan*/  RARCH_PATH_SUBSYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct playlist_entry*) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_9__ g_defaults ; 
 TYPE_5__* FUNC6 () ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 () ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,size_t,int) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 struct retro_system_info* FUNC18 () ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC21(
      bool launched_from_menu,
      bool launched_from_cli)
{
   bool contentless = false;
   bool is_inited   = false;

   FUNC2(&contentless, &is_inited);

   /* Push entry to top of history playlist */
   if (is_inited || contentless)
   {
      size_t tmp_size                = PATH_MAX_LENGTH * sizeof(char);
      char *tmp                      = (char*)FUNC7(tmp_size);
      const char *path_content       = FUNC10(RARCH_PATH_CONTENT);
      struct retro_system_info *info = FUNC18();

      tmp[0] = '\0';

      if (!FUNC19(path_content))
         FUNC20(tmp, path_content, tmp_size);

      /* Path can be relative here.
       * Ensure we're pushing absolute path. */
      if (!launched_from_menu && !FUNC19(tmp))
         FUNC13(tmp, tmp_size, true);

#ifdef HAVE_MENU
      /* Push quick menu onto menu stack */
      if (launched_from_cli)
         menu_driver_ctl(RARCH_MENU_CTL_SET_PENDING_QUICK_MENU, NULL);
#endif

      if (info && !FUNC19(tmp))
      {
         const char *core_path      = NULL;
         const char *core_name      = NULL;
         const char *label          = NULL;
         const char *crc32          = NULL;
         const char *db_name        = NULL;
         playlist_t *playlist_hist  = g_defaults.content_history;
         settings_t *settings       = FUNC1();
         global_t *global           = FUNC6();

         switch (FUNC12(tmp))
         {
            case RARCH_CONTENT_MOVIE:
#ifdef HAVE_FFMPEG
               playlist_hist        = g_defaults.video_history;
               core_name            = "movieplayer";
               core_path            = "builtin";
#endif
               break;
            case RARCH_CONTENT_MUSIC:
               playlist_hist        = g_defaults.music_history;
               core_name            = "musicplayer";
               core_path            = "builtin";
               break;
            case RARCH_CONTENT_IMAGE:
#ifdef HAVE_IMAGEVIEWER
               playlist_hist        = g_defaults.image_history;
               core_name            = "imageviewer";
               core_path            = "builtin";
#endif
               break;
            default:
            {
               core_info_t *core_info = NULL;
               /* Set core display name
                * (As far as I can tell, core_info_get_current_core()
                * should always provide a valid pointer here...) */
               FUNC4(&core_info);

               /* Set core path */
               core_path            = FUNC10(RARCH_PATH_CORE);

               if (core_info)
                  core_name         = core_info->display_name;

               if (FUNC19(core_name))
                  core_name         = info->library_name;

#ifdef HAVE_MENU
               {
                  menu_handle_t *menu = menu_driver_get_ptr();
                  /* Set database name + checksum */
                  if (menu)
                  {
                     playlist_t *playlist_curr = playlist_get_cached();

                     if (playlist_index_is_valid(playlist_curr, menu->rpl_entry_selection_ptr, tmp, core_path))
                     {
                        playlist_get_crc32(playlist_curr, menu->rpl_entry_selection_ptr,   &crc32);
                        playlist_get_db_name(playlist_curr, menu->rpl_entry_selection_ptr, &db_name);
                     }
                  }
               }
#endif
               break;
            }
         }

         if (global && !FUNC19(global->name.label))
            label = global->name.label;

         if (
              settings && settings->bools.history_list_enable 
               && playlist_hist)
         {
            char subsystem_name[PATH_MAX_LENGTH];
            struct playlist_entry entry = {0};

            subsystem_name[0] = '\0';

            FUNC3(FUNC10(RARCH_PATH_SUBSYSTEM), subsystem_name, sizeof(subsystem_name));

            /* the push function reads our entry as const, so these casts are safe */
            entry.path            = (char*)tmp;
            entry.label           = (char*)label;
            entry.core_path       = (char*)core_path;
            entry.core_name       = (char*)core_name;
            entry.crc32           = (char*)crc32;
            entry.db_name         = (char*)db_name;
            entry.subsystem_ident = (char*)FUNC10(RARCH_PATH_SUBSYSTEM);
            entry.subsystem_name  = (char*)subsystem_name;
            entry.subsystem_roms  = (struct string_list*)FUNC11();

            FUNC0(
                  playlist_hist, &entry);
         }
      }

      FUNC5(tmp);
   }
}