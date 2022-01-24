#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct playlist_entry {char* label; char* path; char* core_path; char* db_name; char* core_name; } ;
struct TYPE_15__ {int /*<<< orphan*/  path_content_database; } ;
struct TYPE_14__ {scalar_t__ playlist_sublabel_runtime_type; scalar_t__ playlist_sublabel_last_played_style; } ;
struct TYPE_13__ {int /*<<< orphan*/  content_runtime_log_aggregate; scalar_t__ content_runtime_log; } ;
struct TYPE_17__ {TYPE_3__ paths; TYPE_2__ uints; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
typedef  int /*<<< orphan*/  runtime_log_t ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_18__ {unsigned int rpl_entry_selection_ptr; char* deferred_path; } ;
typedef  TYPE_6__ menu_handle_t ;
struct TYPE_19__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_7__ menu_displaylist_info_t ;
typedef  enum playlist_sublabel_last_played_style_type { ____Placeholder_playlist_sublabel_last_played_style_type } playlist_sublabel_last_played_style_type ;
typedef  int /*<<< orphan*/  db_path ;
typedef  int /*<<< orphan*/  db_name_no_ext_buff ;
typedef  int /*<<< orphan*/  core_name ;
struct TYPE_20__ {char const* path; TYPE_4__* inf; } ;
typedef  TYPE_8__ core_info_ctx_find_t ;
struct TYPE_16__ {char const* display_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TYPE_RDB_ENTRY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_INFO_CORE_NAME ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_INFO_DATABASE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_INFO_LABEL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_INFO_LAST_PLAYED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_INFO_PATH ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_CONTENT_INFO_RUNTIME ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_RDB_ENTRY_DETAIL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CONTENT_INFO_CORE_NAME ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CONTENT_INFO_DATABASE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CONTENT_INFO_LABEL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_CONTENT_INFO_PATH ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ PLAYLIST_RUNTIME_AGGREGATE ; 
 scalar_t__ PLAYLIST_RUNTIME_PER_CORE ; 
 int /*<<< orphan*/  RARCH_CTL_IS_DUMMY_CORE ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 TYPE_5__* FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_8__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int,struct playlist_entry const**) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char*,char const*) ; 
 int FUNC19 (char*,char const*,int) ; 
 int FUNC20 (char*,char const*,int) ; 

__attribute__((used)) static unsigned FUNC21(
      menu_handle_t *menu,
      menu_displaylist_info_t *info)
{
   settings_t *settings                = FUNC0();
   playlist_t *playlist                = FUNC9();
   unsigned idx                        = menu->rpl_entry_selection_ptr;
   const struct playlist_entry *entry  = NULL;
   const char *loaded_content_path     = FUNC6(RARCH_PATH_CONTENT);
   const char *loaded_core_path        = FUNC6(RARCH_PATH_CORE);
   const char *content_label           = NULL;
   const char *content_path            = NULL;
   const char *core_path               = NULL;
   const char *db_name                 = NULL;
   bool content_loaded                 = false;
   bool playlist_valid                 = false;
   unsigned count                      = 0;
   int n                               = 0;
   char core_name[PATH_MAX_LENGTH];
   char tmp[8192];

   core_name[0] = '\0';

   if (!settings)
      return count;

   content_loaded = !FUNC12(RARCH_CTL_IS_DUMMY_CORE, NULL)
         && FUNC18(menu->deferred_path, loaded_content_path);

   /* If content is currently running, have to make sure
    * we have a valid playlist to work with
    * (if content is not running, than playlist will always
    * be valid provided that playlist_get_cached() does not
    * return NULL) */
   if (content_loaded)
   {
      if (!FUNC17(loaded_content_path) && !FUNC17(loaded_core_path))
         playlist_valid = FUNC11(
               playlist, idx, loaded_content_path, loaded_core_path);
   }
   else if (playlist)
      playlist_valid = true;

   if (playlist_valid)
   {
      /* If playlist is valid, all information is readily available */
      FUNC10(playlist, idx, &entry);

      if (entry)
      {
         content_label = entry->label;
         content_path  = entry->path;
         core_path     = entry->core_path;
         db_name       = entry->db_name;

         FUNC20(core_name, entry->core_name, sizeof(core_name));
      }
   }
   else
   {
      core_info_ctx_find_t core_info;

      /* No playlist - just extract what we can... */
      content_path   = loaded_content_path;
      core_path      = loaded_core_path;

      core_info.inf  = NULL;
      core_info.path = core_path;

      if (FUNC1(&core_info, core_path))
         if (!FUNC17(core_info.inf->display_name))
            FUNC20(core_name, core_info.inf->display_name, sizeof(core_name));
   }

   /* Content label */
   if (!FUNC17(content_label))
   {
      tmp[0]   = '\0';

      n        = FUNC20(tmp, FUNC5(MENU_ENUM_LABEL_VALUE_CONTENT_INFO_LABEL), sizeof(tmp));
      FUNC19(tmp, ": ", sizeof(tmp));
      n        = FUNC19(tmp, content_label, sizeof(tmp));

      /* Silence gcc compiler warning
       * (getting so sick of these...) */
      if ((n < 0) || (n >= PATH_MAX_LENGTH))
         n = 0;

      if (FUNC4(info->list, tmp,
            FUNC5(MENU_ENUM_LABEL_CONTENT_INFO_LABEL),
            MENU_ENUM_LABEL_CONTENT_INFO_LABEL,
            0, 0, 0))
         count++;
   }

   /* Content path */
   if (!FUNC17(content_path))
   {
      tmp[0]   = '\0';

      n        = FUNC20(tmp, FUNC5(MENU_ENUM_LABEL_VALUE_CONTENT_INFO_PATH), sizeof(tmp));
      n        = FUNC19(tmp, ": ", sizeof(tmp));
      n        = FUNC19(tmp, content_path, sizeof(tmp));

      /* Silence gcc compiler warning
       * (getting so sick of these...) */
      if ((n < 0) || (n >= PATH_MAX_LENGTH))
         n = 0;

      if (FUNC4(info->list, tmp,
            FUNC5(MENU_ENUM_LABEL_CONTENT_INFO_PATH),
            MENU_ENUM_LABEL_CONTENT_INFO_PATH,
            0, 0, 0))
         count++;
   }

   /* Core name */
   if (!FUNC17(core_name) &&
       !FUNC18(core_name, "DETECT"))
   {
      tmp[0]   = '\0';

      n        = FUNC20(tmp, FUNC5(MENU_ENUM_LABEL_VALUE_CONTENT_INFO_CORE_NAME), sizeof(tmp));
      n        = FUNC19(tmp, ": ", sizeof(tmp));
      n        = FUNC19(tmp, core_name, sizeof(tmp));

      /* Silence gcc compiler warning
       * (getting so sick of these...) */
      if ((n < 0) || (n >= PATH_MAX_LENGTH))
         n = 0;

      if (FUNC4(info->list, tmp,
            FUNC5(MENU_ENUM_LABEL_CONTENT_INFO_CORE_NAME),
            MENU_ENUM_LABEL_CONTENT_INFO_CORE_NAME,
            0, 0, 0))
         count++;
   }

   /* Database */
   if (!FUNC17(db_name))
   {
      char *db_name_no_ext = NULL;
      char db_name_no_ext_buff[PATH_MAX_LENGTH];

      db_name_no_ext_buff[0] = '\0';

      /* Remove .lpl extension
       * > path_remove_extension() requires a char * (not const)
       *   so have to use a temporary buffer... */
      FUNC20(db_name_no_ext_buff, db_name, sizeof(db_name_no_ext_buff));
      db_name_no_ext = FUNC8(db_name_no_ext_buff);

      if (!FUNC17(db_name_no_ext))
      {
         tmp[0]   = '\0';

         n        = FUNC20(tmp, FUNC5(MENU_ENUM_LABEL_VALUE_CONTENT_INFO_DATABASE), sizeof(tmp));
         n        = FUNC19(tmp, ": ", sizeof(tmp));
         n        = FUNC19(tmp, db_name_no_ext, sizeof(tmp));

         /* Silence gcc compiler warning
          * (getting so sick of these...) */
         if ((n < 0) || (n >= PATH_MAX_LENGTH))
            n = 0;

         if (FUNC4(info->list, tmp,
               FUNC5(MENU_ENUM_LABEL_CONTENT_INFO_DATABASE),
               MENU_ENUM_LABEL_CONTENT_INFO_DATABASE,
               0, 0, 0))
            count++;
      }
   }

   /* Runtime */
   if (((settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_PER_CORE) &&
         settings->bools.content_runtime_log) ||
       ((settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_AGGREGATE) &&
         !settings->bools.content_runtime_log_aggregate))
   {
      runtime_log_t *runtime_log = FUNC16(
            content_path, core_path,
            (settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_PER_CORE));

      if (runtime_log)
      {
         if (FUNC15(runtime_log))
         {
            /* Play time */
            tmp[0] = '\0';
            FUNC14(runtime_log, tmp, sizeof(tmp));

            if (!FUNC17(tmp))
               if (FUNC4(info->list, tmp,
                     FUNC5(MENU_ENUM_LABEL_CONTENT_INFO_RUNTIME),
                     MENU_ENUM_LABEL_CONTENT_INFO_RUNTIME,
                     0, 0, 0))
                  count++;

            /* Last Played */
            tmp[0] = '\0';
            FUNC13(runtime_log, tmp, sizeof(tmp),
                  (enum playlist_sublabel_last_played_style_type)settings->uints.playlist_sublabel_last_played_style);

            if (!FUNC17(tmp))
               if (FUNC4(info->list, tmp,
                     FUNC5(MENU_ENUM_LABEL_CONTENT_INFO_LAST_PLAYED),
                     MENU_ENUM_LABEL_CONTENT_INFO_LAST_PLAYED,
                     0, 0, 0))
                  count++;
         }

         FUNC3(runtime_log);
      }
   }

#ifdef HAVE_LIBRETRODB

   /* Database entry */
   if (!string_is_empty(content_label) && !string_is_empty(db_name))
   {
      char db_path[PATH_MAX_LENGTH];

      db_path[0] = '\0';

      fill_pathname_join_noext(db_path,
            settings->paths.path_content_database,
            db_name,
            sizeof(db_path));
      strlcat(db_path, ".rdb", sizeof(db_path));

      if (path_is_valid(db_path))
         if (menu_entries_append_enum(info->list,
               content_label,
               db_path,
               MENU_ENUM_LABEL_RDB_ENTRY_DETAIL,
               FILE_TYPE_RDB_ENTRY, 0, 0))
            count++;
   }

#endif

   return count;
}