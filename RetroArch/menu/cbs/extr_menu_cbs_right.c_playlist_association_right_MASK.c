#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  core_path ;
struct TYPE_7__ {int /*<<< orphan*/  display_name; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ core_info_t ;
struct TYPE_8__ {size_t count; } ;
typedef  TYPE_2__ core_info_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_INFO_LIST_SORT_DISPLAY_NAME ; 
 int PATH_MAX_LENGTH ; 
 TYPE_1__* FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(unsigned type, const char *label,
      bool wraparound)
{
   char core_path[PATH_MAX_LENGTH];
   size_t i, next, current          = 0;
   playlist_t *playlist             = FUNC4();
   core_info_list_t *core_info_list = NULL;
   core_info_t *core_info           = NULL;

   core_path[0]     = '\0';

   if (!playlist)
      return -1;

   FUNC1(&core_info_list);
   if (!core_info_list)
      return FUNC3();

   /* Get current core path association */
   if (FUNC9(FUNC5(playlist)))
   {
      core_path[0] = 'D';
      core_path[1] = 'E';
      core_path[2] = 'T';
      core_path[3] = 'E';
      core_path[4] = 'C';
      core_path[5] = 'T';
      core_path[6] = '\0';
   }
   else
      FUNC11(core_path, FUNC5(playlist), sizeof(core_path));

   /* Sort cores alphabetically */
   FUNC2(core_info_list, CORE_INFO_LIST_SORT_DISPLAY_NAME);

   /* Get the index of the currently associated core */
   for (i = 0; i < core_info_list->count; i++)
   {
      core_info = NULL;
      core_info = FUNC0(core_info_list, i);
      if (!core_info)
         return -1;
      if (FUNC10(core_info->path, core_path))
         current = i;
   }

   /* Increment core index */
   next = current + 1;
   if (next >= core_info_list->count)
   {
      if (wraparound)
         next = 0;
      else
      {
         if (core_info_list->count > 0)
            next = core_info_list->count - 1;
         else
            next = 0;
      }
   }

   /* Get new core info */
   core_info = NULL;
   core_info = FUNC0(core_info_list, next);
   if (!core_info)
      return -1;

   /* Update playlist */
   FUNC7(playlist, core_info->path);
   FUNC6(playlist, core_info->display_name);
   FUNC8(playlist);

   return 0;
}