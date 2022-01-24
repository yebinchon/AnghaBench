#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {scalar_t__ runtime_status; char* runtime_str; char* last_played_str; int /*<<< orphan*/  last_played_second; int /*<<< orphan*/  last_played_minute; int /*<<< orphan*/  last_played_hour; int /*<<< orphan*/  last_played_day; int /*<<< orphan*/  last_played_month; int /*<<< orphan*/  last_played_year; int /*<<< orphan*/  runtime_seconds; int /*<<< orphan*/  runtime_minutes; int /*<<< orphan*/  runtime_hours; int /*<<< orphan*/  core_path; int /*<<< orphan*/  path; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  menu_driver; } ;
struct TYPE_5__ {scalar_t__ playlist_sublabel_runtime_type; scalar_t__ playlist_sublabel_last_played_style; } ;
struct TYPE_7__ {TYPE_2__ arrays; TYPE_1__ uints; } ;
typedef  TYPE_3__ settings_t ;
typedef  int /*<<< orphan*/  runtime_str ;
typedef  int /*<<< orphan*/  runtime_log_t ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  last_played_str ;
typedef  enum playlist_sublabel_last_played_style_type { ____Placeholder_playlist_sublabel_last_played_style_type } playlist_sublabel_last_played_style_type ;

/* Variables and functions */
 int PLAYLIST_LAST_PLAYED_STYLE_YMD_HMS ; 
 scalar_t__ PLAYLIST_RUNTIME_MISSING ; 
 scalar_t__ PLAYLIST_RUNTIME_PER_CORE ; 
 scalar_t__ PLAYLIST_RUNTIME_VALID ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,struct playlist_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 

void FUNC12(playlist_t *playlist, size_t idx)
{
   settings_t *settings               = FUNC0();
   runtime_log_t *runtime_log         = NULL;
   const struct playlist_entry *entry = NULL;
   struct playlist_entry update_entry = {0};
   enum playlist_sublabel_last_played_style_type timedate_style;
   char runtime_str[64];
   char last_played_str[64];
   
   /* Sanity check */
   if (!playlist || !settings)
      return;
   
   if (idx >= FUNC3(playlist))
      return;
   
   /* Set fallback playlist 'runtime_status'
    * (saves 'if' checks later...) */
   update_entry.runtime_status = PLAYLIST_RUNTIME_MISSING;
   
   /* Get current last played formatting type
    * > Have to include a 'HAVE_MENU' check here... */
#ifdef HAVE_MENU
   timedate_style = (enum playlist_sublabel_last_played_style_type)settings->uints.playlist_sublabel_last_played_style;
#else
   timedate_style = PLAYLIST_LAST_PLAYED_STYLE_YMD_HMS;
#endif

   /* 'Attach' runtime/last played strings */
   runtime_str[0]               = '\0';
   last_played_str[0]           = '\0';
   update_entry.runtime_str     = runtime_str;
   update_entry.last_played_str = last_played_str;
   
   /* Read current playlist entry */
   FUNC2(playlist, idx, &entry);
   
   /* Attempt to open log file */
   runtime_log = FUNC10(entry->path, entry->core_path,
         (settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_PER_CORE));
   
   if (runtime_log)
   {
      /* Check whether a non-zero runtime has been recorded */
      if (FUNC9(runtime_log))
      {
         /* Read current runtime */
         FUNC7(runtime_log,
               &update_entry.runtime_hours, &update_entry.runtime_minutes, &update_entry.runtime_seconds);
         
         FUNC8(runtime_log, runtime_str, sizeof(runtime_str));
         
         /* Read last played timestamp */
         FUNC5(runtime_log,
               &update_entry.last_played_year, &update_entry.last_played_month, &update_entry.last_played_day,
               &update_entry.last_played_hour, &update_entry.last_played_minute, &update_entry.last_played_second);
         
         FUNC6(runtime_log, last_played_str, sizeof(last_played_str), timedate_style);
         
         /* Playlist entry now contains valid runtime data */
         update_entry.runtime_status = PLAYLIST_RUNTIME_VALID;
      }
      
      /* Clean up */
      FUNC1(runtime_log);
   }
   
   /* Ozone requires runtime/last played strings to be
    * populated even when no runtime is recorded */
   if (FUNC11(settings->arrays.menu_driver, "ozone"))
   {
      if (update_entry.runtime_status != PLAYLIST_RUNTIME_VALID)
      {
         FUNC8(NULL, runtime_str, sizeof(runtime_str));
         FUNC6(NULL, last_played_str, sizeof(last_played_str), timedate_style);
      }
   }
   
   /* Update playlist */
   FUNC4(playlist, idx, &update_entry, false);
}