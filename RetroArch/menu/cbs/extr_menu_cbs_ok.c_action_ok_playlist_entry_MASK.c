#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {char* label; char* core_path; char* core_name; int /*<<< orphan*/  path; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  new_core_path ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_5__ {char* path; TYPE_1__* inf; } ;
typedef  TYPE_2__ core_info_ctx_find_t ;
struct TYPE_4__ {char* display_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PLAYLIST_LOAD ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC15(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char new_core_path[PATH_MAX_LENGTH];
   size_t selection_ptr                = 0;
   playlist_t *playlist                = FUNC7();
   const struct playlist_entry *entry  = NULL;
   const char *entry_label             = NULL;
   menu_handle_t *menu                 = FUNC6();

   new_core_path[0] = '\0';

   if (!playlist || !menu)
      return FUNC4();

   selection_ptr = entry_idx;

   FUNC9(playlist, selection_ptr, &entry);

   entry_label = entry->label;

   if (     FUNC13(entry->core_path, "DETECT")
         && FUNC13(entry->core_name, "DETECT"))
   {
      core_info_ctx_find_t core_info;
      const char *default_core_path          =
            FUNC8(playlist);
      bool found_associated_core             = false;

      if (!FUNC12(default_core_path))
      {
         FUNC14(new_core_path, default_core_path, sizeof(new_core_path));
         FUNC10(PLAYLIST_LOAD, new_core_path, sizeof(new_core_path));
         found_associated_core = true;
      }

      core_info.inf                          = NULL;
      core_info.path                         = new_core_path;

      if (!FUNC2(&core_info, new_core_path))
         found_associated_core = false;

      if (!found_associated_core)
         /* TODO: figure out if this should refer to the inner or outer entry_path */
         /* TODO: make sure there's only one entry_path in this function */
         return FUNC0(entry->path,
               label, type, selection_ptr, entry_idx);

      {
         struct playlist_entry entry = {0};

         entry.core_path = (char*)default_core_path;
         entry.core_name = core_info.inf->display_name;

         FUNC1(NULL,
               selection_ptr,
               &entry);
      }

   }
   else if (!FUNC12(entry->core_path)) {
       FUNC14(new_core_path, entry->core_path, sizeof(new_core_path));
       FUNC10(PLAYLIST_LOAD, new_core_path, sizeof(new_core_path));
   }

   if (!playlist || !FUNC5(playlist, selection_ptr))
   {
      FUNC11(
            "File could not be loaded from playlist.\n",
            1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      return FUNC4();
   }

   FUNC9(playlist,
         selection_ptr, &entry);

   return FUNC3(
         new_core_path, entry->path, entry_label);
}