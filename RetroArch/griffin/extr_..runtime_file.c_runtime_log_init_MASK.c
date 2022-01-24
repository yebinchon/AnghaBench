#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_buf ;
struct TYPE_13__ {char* directory_runtime_log; char* directory_playlist; } ;
struct TYPE_16__ {TYPE_2__ paths; } ;
typedef  TYPE_5__ settings_t ;
struct TYPE_15__ {scalar_t__ second; scalar_t__ minute; scalar_t__ hour; scalar_t__ day; scalar_t__ month; scalar_t__ year; } ;
struct TYPE_14__ {scalar_t__ seconds; scalar_t__ minutes; scalar_t__ hours; } ;
struct TYPE_17__ {char* path; TYPE_4__ last_played; TYPE_3__ runtime; } ;
typedef  TYPE_6__ runtime_log_t ;
typedef  int /*<<< orphan*/  log_file_path ;
typedef  int /*<<< orphan*/  log_file_dir ;
typedef  int /*<<< orphan*/  core_name ;
struct TYPE_18__ {unsigned int count; TYPE_1__* list; } ;
typedef  TYPE_7__ core_info_list_t ;
typedef  int /*<<< orphan*/  content_name ;
struct TYPE_12__ {char* core_name; char const* path; } ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_5__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 

runtime_log_t *FUNC17(const char *content_path,
      const char *core_path, bool log_per_core)
{
   unsigned i;
   char content_name[PATH_MAX_LENGTH];
   char core_name[PATH_MAX_LENGTH];
   char log_file_dir[PATH_MAX_LENGTH];
   char log_file_path[PATH_MAX_LENGTH];
   char tmp_buf[PATH_MAX_LENGTH];
   settings_t *settings           = FUNC2();
   core_info_list_t *core_info    = NULL;
   runtime_log_t *runtime_log     = NULL;
   const char *core_path_basename = NULL;
   
   content_name[0]                = '\0';
   core_name[0]                   = '\0';
   log_file_dir[0]                = '\0';
   log_file_path[0]               = '\0';
   tmp_buf[0]                     = '\0';
   
   /* Error checking */
   if (!settings)
      return NULL;
   
   if (  FUNC13(settings->paths.directory_runtime_log) && 
         FUNC13(settings->paths.directory_playlist))
   {
      FUNC0("Runtime log directory is undefined - cannot save"
            " runtime log files.\n");
      return NULL;
   }

   core_path_basename = FUNC7(core_path);
   
   if (  FUNC13(content_path) || 
         FUNC13(core_path_basename))
      return NULL;
   
   if (  FUNC14(core_path, "builtin") || 
         FUNC14(core_path, "DETECT"))
      return NULL;
   
   /* Get core name
    * Note: An annoyance - this is required even when
    * we are performing aggregate (not per core) logging,
    * since content name is sometimes dependent upon core
    * (e.g. see TyrQuake below) */
   FUNC3(&core_info);
   
   if (!core_info)
      return NULL;
   
   for (i = 0; i < core_info->count; i++)
   {
      const char *entry_core_name = core_info->list[i].core_name;
      if (!FUNC14(
               FUNC7(core_info->list[i].path), core_path_basename))
         continue;

      if (FUNC13(entry_core_name))
         return NULL;

      FUNC16(core_name, entry_core_name, sizeof(core_name));
      break;
   }
   
   if (FUNC13(core_name))
      return NULL;
   
   /* Get runtime log directory */
   if (FUNC13(settings->paths.directory_runtime_log))
   {
      /* If 'custom' runtime log path is undefined,
       * use default 'playlists/logs' directory... */
      FUNC4(
            tmp_buf,
            settings->paths.directory_playlist,
            "logs",
            sizeof(tmp_buf));
   }
   else
      FUNC16(tmp_buf,
            settings->paths.directory_runtime_log, sizeof(tmp_buf));
   
   if (FUNC13(tmp_buf))
      return NULL;
   
   if (log_per_core)
      FUNC4(
            log_file_dir,
            tmp_buf,
            core_name,
            sizeof(log_file_dir));
   else
      FUNC16(log_file_dir, tmp_buf, sizeof(log_file_dir));
   
   if (FUNC13(log_file_dir))
      return NULL;
   
   /* Create directory, if required */
   if (!FUNC8(log_file_dir))
   {
      if (!FUNC10(log_file_dir))
      {
         FUNC0("[runtime] failed to create directory for"
               " runtime log: %s.\n", log_file_dir);
         return NULL;
      }
   }
   
   /* Get content name
    * Note: TyrQuake requires a specific hack, since all
    * content has the same name... */
   if (FUNC14(core_name, "TyrQuake"))
   {
      const char *last_slash = FUNC5(content_path);
      if (last_slash)
      {
         size_t path_length = last_slash + 1 - content_path;
         if (path_length < PATH_MAX_LENGTH)
         {
            FUNC6(tmp_buf, 0, sizeof(tmp_buf));
            FUNC16(tmp_buf, content_path, path_length * sizeof(char));
            FUNC16(content_name, FUNC7(tmp_buf), sizeof(content_name));
         }
      }
   }
   else
   {
      /* path_remove_extension() requires a char * (not const)
       * so have to use a temporary buffer... */
      char *tmp_buf_no_ext = NULL;
      tmp_buf[0]           = '\0';
      FUNC16(tmp_buf, FUNC7(content_path), sizeof(tmp_buf));
      tmp_buf_no_ext       = FUNC11(tmp_buf);

      if (FUNC13(tmp_buf_no_ext))
         return NULL;

      FUNC16(content_name, tmp_buf_no_ext, sizeof(content_name));
   }
   
   if (FUNC13(content_name))
      return NULL;
   
   /* Build final log file path */
   FUNC4(log_file_path, log_file_dir, content_name, sizeof(log_file_path));
   FUNC15(log_file_path, ".lrtl", sizeof(log_file_path));
   
   if (FUNC13(log_file_path))
      return NULL;

   /* Phew... If we get this far then all is well.
    * > Create 'runtime_log' object */
   runtime_log                     = (runtime_log_t*)FUNC1(1, sizeof(*runtime_log));
   if (!runtime_log)
      return NULL;
   
   /* > Populate default values */
   runtime_log->runtime.hours      = 0;
   runtime_log->runtime.minutes    = 0;
   runtime_log->runtime.seconds    = 0;
   
   runtime_log->last_played.year   = 0;
   runtime_log->last_played.month  = 0;
   runtime_log->last_played.day    = 0;
   runtime_log->last_played.hour   = 0;
   runtime_log->last_played.minute = 0;
   runtime_log->last_played.second = 0;
   
   FUNC16(runtime_log->path, log_file_path, sizeof(runtime_log->path));
   
   /* Load existing log file, if it exists */
   if (FUNC9(runtime_log->path))
      FUNC12(runtime_log);
   
   return runtime_log;
}