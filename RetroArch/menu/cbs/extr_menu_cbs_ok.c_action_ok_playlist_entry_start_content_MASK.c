#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {char* core_path; char* core_name; int /*<<< orphan*/  label; int /*<<< orphan*/  path; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  new_core_path ;
struct TYPE_7__ {size_t unsigned_var; } ;
struct TYPE_9__ {TYPE_1__ scratchpad; } ;
typedef  TYPE_3__ menu_handle_t ;
struct TYPE_10__ {char* path; TYPE_2__* inf; } ;
typedef  TYPE_4__ core_info_ctx_find_t ;
struct TYPE_8__ {char* display_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int PATH_MAX_LENGTH ; 
 int FUNC0 (char const*,char const*,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_3__* FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC14(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   size_t selection_ptr                = 0;
   playlist_t *playlist                = FUNC7();
   const struct playlist_entry *entry  = NULL;
   menu_handle_t *menu                 = FUNC6();

   if (!playlist || !menu)
      return FUNC4();

   selection_ptr                       = menu->scratchpad.unsigned_var;

   FUNC9(playlist, selection_ptr, &entry);

   if (     FUNC12(entry->core_path, "DETECT")
         && FUNC12(entry->core_name, "DETECT"))
   {
      core_info_ctx_find_t core_info;
      char new_core_path[PATH_MAX_LENGTH];
      const char *entry_path                 = NULL;
      const char *default_core_path          =
            FUNC8(playlist);
      bool found_associated_core             = false;

      new_core_path[0]                       = '\0';

      if (!FUNC11(default_core_path))
      {
         FUNC13(new_core_path, default_core_path, sizeof(new_core_path));
         found_associated_core = true;
      }

      core_info.inf                          = NULL;
      core_info.path                         = new_core_path;

      if (!FUNC2(&core_info, new_core_path))
         found_associated_core = false;

      /* TODO: figure out if this should refer to
       * the inner or outer entry_path. */
      /* TODO: make sure there's only one entry_path
       * in this function. */
      if (!found_associated_core)
         return FUNC0(entry_path,
               label, type, selection_ptr, entry_idx);

      {
         struct playlist_entry entry = {0};

         entry.core_path = new_core_path;
         entry.core_name = core_info.inf->display_name;

         FUNC1(
               playlist,
               selection_ptr,
               &entry);
      }
   }

   if (!FUNC5(playlist, selection_ptr))
   {
      FUNC10("File could not be loaded from playlist.\n", 1, 100, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      goto error;
   }

   FUNC9(playlist, selection_ptr, &entry);

   return FUNC3(entry->core_path, entry->path, entry->label);

error:
   return FUNC4();
}