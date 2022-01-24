#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;
struct retro_system_info {char const* library_name; } ;
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_11__ {int /*<<< orphan*/  rpl_entry_selection_ptr; } ;
typedef  TYPE_3__ menu_handle_t ;
struct TYPE_9__ {char const* label; } ;
struct TYPE_12__ {TYPE_1__ name; } ;
typedef  TYPE_4__ global_t ;
typedef  int /*<<< orphan*/  core_path ;
typedef  int /*<<< orphan*/  core_name ;
struct TYPE_13__ {char* path; TYPE_2__* inf; } ;
typedef  TYPE_5__ core_info_ctx_find_t ;
typedef  int /*<<< orphan*/  content_label ;
struct TYPE_10__ {char const* display_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_ADD_TO_FAVORITES ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 TYPE_4__* FUNC3 () ; 
 int FUNC4 () ; 
 TYPE_3__* FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*) ; 
 struct retro_system_info* FUNC11 () ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*,char const*,union string_list_elem_attr) ; 
 int /*<<< orphan*/  FUNC14 (struct string_list*) ; 
 struct string_list* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 

__attribute__((used)) static int FUNC17(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   const char *content_path = FUNC6(RARCH_PATH_CONTENT);
   int ret = 0;

   /* Error checking
    * > If content path is empty, cannot do anything... */
   if (!FUNC12(content_path))
   {
      global_t *global                 = FUNC3();
      struct retro_system_info *system = FUNC11();
      struct string_list *str_list     = NULL;
      const char *crc32                = NULL;
      const char *db_name              = NULL;

      union string_list_elem_attr attr;
      char content_label[PATH_MAX_LENGTH];
      char core_path[PATH_MAX_LENGTH];
      char core_name[PATH_MAX_LENGTH];

      content_label[0] = '\0';
      core_path[0] = '\0';
      core_name[0] = '\0';

      /* Create string list container for playlist parameters */
      attr.i = 0;
      str_list = FUNC15();
      if (!str_list)
         return 0;

      /* Determine playlist parameters */

      /* > content_label */
      if (global)
         if (!FUNC12(global->name.label))
            FUNC16(content_label, global->name.label, sizeof(content_label));

      if (FUNC12(content_label)) /* Label is empty - use file name instead */
         FUNC2(content_label, content_path, sizeof(content_label));

      /* > core_path + core_name */
      if (system)
      {
         if (!FUNC12(FUNC6(RARCH_PATH_CORE)))
         {
            core_info_ctx_find_t core_info;

            /* >> core_path */
            FUNC16(core_path, FUNC6(RARCH_PATH_CORE), sizeof(core_path));

            /* >> core_name
             * (always use display name, if available) */
            core_info.inf  = NULL;
            core_info.path = core_path;

            if (FUNC1(&core_info, core_path))
               if (!FUNC12(core_info.inf->display_name))
                  FUNC16(core_name, core_info.inf->display_name, sizeof(core_name));
         }

         /* >> core_name (continued) */
         if (FUNC12(core_name) && !FUNC12(system->library_name))
            FUNC16(core_name, system->library_name, sizeof(core_name));
      }

      if (FUNC12(core_path) || FUNC12(core_name))
      {
         FUNC16(core_path, "DETECT", sizeof(core_path));
         FUNC16(core_name, "DETECT", sizeof(core_name));
      }

      /* > crc32 + db_name */
      {
         menu_handle_t *menu                 = FUNC5();
         if (menu)
         {
            playlist_t *playlist_curr = FUNC7();

            if (FUNC10(playlist_curr, menu->rpl_entry_selection_ptr, content_path, core_path))
            {
               FUNC8(playlist_curr, menu->rpl_entry_selection_ptr, &crc32);
               FUNC9(playlist_curr, menu->rpl_entry_selection_ptr, &db_name);
            }
         }
      }

      /* Copy playlist parameters into string list
       *   [0]: content_path
       *   [1]: content_label
       *   [2]: core_path
       *   [3]: core_name
       *   [4]: crc32
       *   [5]: db_name */
      FUNC13(str_list, content_path, attr);
      FUNC13(str_list, content_label, attr);
      FUNC13(str_list, core_path, attr);
      FUNC13(str_list, core_name, attr);
      FUNC13(str_list, !FUNC12(crc32) ? crc32 : "", attr);
      FUNC13(str_list, !FUNC12(db_name) ? db_name : "", attr);

      /* Trigger 'ADD_TO_FAVORITES' event */
      if (!FUNC0(CMD_EVENT_ADD_TO_FAVORITES, (void*)str_list))
         ret = FUNC4();

      /* Clean up */
      FUNC14(str_list);
      str_list = NULL;
   }

   return ret;
}