#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct playlist_entry {char* core_name; scalar_t__ runtime_status; char* runtime_str; char* last_played_str; } ;
struct TYPE_8__ {int /*<<< orphan*/  content_runtime_log_aggregate; int /*<<< orphan*/  content_runtime_log; int /*<<< orphan*/  playlist_show_sublabels; } ;
struct TYPE_7__ {scalar_t__ playlist_sublabel_runtime_type; } ;
struct TYPE_6__ {char const* menu_driver; } ;
struct TYPE_9__ {TYPE_3__ bools; TYPE_2__ uints; TYPE_1__ arrays; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HISTORY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HORIZONTAL_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_CORE ; 
 scalar_t__ PLAYLIST_RUNTIME_AGGREGATE ; 
 scalar_t__ PLAYLIST_RUNTIME_PER_CORE ; 
 scalar_t__ PLAYLIST_RUNTIME_UNKNOWN ; 
 scalar_t__ PLAYLIST_RUNTIME_VALID ; 
 TYPE_4__* FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,struct playlist_entry const**) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC10(
      file_list_t *list,
      unsigned type, unsigned i,
      const char *label, const char *path,
      char *s, size_t len)
{
   settings_t *settings               = FUNC0();
   playlist_t *playlist               = NULL;
   const struct playlist_entry *entry = NULL;
   
   if (!settings->bools.playlist_show_sublabels || FUNC7(settings->arrays.menu_driver, "ozone"))
      return 0;

   /* Get current playlist */
   playlist = FUNC2();

   if (!playlist)
      return 0;

   if (i >= FUNC4(playlist))
      return 0;
   
   /* Read playlist entry */
   FUNC3(playlist, i, &entry);
   
   /* Only add sublabel if a core is currently assigned */
   if (FUNC6(entry->core_name) || FUNC7(entry->core_name, "DETECT"))
      return 0;
   
   /* Add core name */
   FUNC9(s, FUNC1(MENU_ENUM_LABEL_VALUE_PLAYLIST_SUBLABEL_CORE), len);
   FUNC8(s, " ", len);
   FUNC8(s, entry->core_name, len);
   
   /* Get runtime info *if* required runtime log is enabled
    * *and* this is a valid playlist type */
   if (((settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_PER_CORE) &&
         !settings->bools.content_runtime_log) ||
       ((settings->uints.playlist_sublabel_runtime_type == PLAYLIST_RUNTIME_AGGREGATE) &&
         !settings->bools.content_runtime_log_aggregate))
      return 0;
   
   /* Note: This looks heavy, but each string_is_equal() call will
    * return almost immediately */
   if (!FUNC7(label, FUNC1(MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY)) &&
       !FUNC7(label, FUNC1(MENU_ENUM_LABEL_HISTORY_TAB)) &&
       !FUNC7(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST)) &&
       !FUNC7(label, FUNC1(MENU_ENUM_LABEL_FAVORITES_TAB)) &&
       !FUNC7(label, FUNC1(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) &&
       !FUNC7(label, FUNC1(MENU_ENUM_LABEL_HORIZONTAL_MENU)))
      return 0;
   
   /* Check whether runtime info should be loaded from log file */
   if (entry->runtime_status == PLAYLIST_RUNTIME_UNKNOWN)
      FUNC5(playlist, i);
   
   /* Check whether runtime info is valid */
   if (entry->runtime_status == PLAYLIST_RUNTIME_VALID)
   {
      int n = 0;
      char tmp[64];
      
      tmp[0  ] = '\n';
      tmp[1  ] = '\0';

      n = FUNC8(tmp, entry->runtime_str, sizeof(tmp));

      tmp[n  ] = '\n';
      tmp[n+1] = '\0';
      
      /* Runtime/last played strings are now cached in the
       * playlist, so we can add both in one go */
      n = FUNC8(tmp, entry->last_played_str, sizeof(tmp));
      
      if ((n < 0) || (n >= 64))
         n = 0; /* Silence GCC warnings... */
      
      if (!FUNC6(tmp))
         FUNC8(s, tmp, len);
   }
   
   return 0;
}