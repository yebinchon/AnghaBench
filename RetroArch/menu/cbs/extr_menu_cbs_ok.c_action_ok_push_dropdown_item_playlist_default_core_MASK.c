#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  playlist_t ;
struct TYPE_6__ {char* display_name; char* path; } ;
typedef  TYPE_1__ core_info_t ;
struct TYPE_7__ {size_t count; } ;
typedef  TYPE_2__ core_info_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   core_info_list_t *core_info_list = NULL;
   playlist_t *playlist             = FUNC4();
   const char* core_name            = path;

   (void)label;
   (void)type;
   (void)idx;
   (void)entry_idx;

   /* Get core list */
   FUNC2(&core_info_list);

   if (!core_info_list || !playlist)
      return -1;

   /* Handle N/A or empty path input */
   if (FUNC8(core_name) ||
       FUNC9(core_name, FUNC3(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE)))
   {
      FUNC6(playlist, "DETECT");
      FUNC5(playlist, "DETECT");
   }
   else
   {
      core_info_t *core_info = NULL;
      bool found             = false;
      size_t i;

      /* Loop through cores until we find a match */
      for (i = 0; i < core_info_list->count; i++)
      {
         core_info = NULL;
         core_info = FUNC1(core_info_list, i);

         if (core_info)
         {
            if (FUNC9(core_name, core_info->display_name))
            {
               /* Update playlist */
               FUNC6(playlist, core_info->path);
               FUNC5(playlist, core_info->display_name);

               found = true;
               break;
            }
         }
      }

      /* Fallback... */
      if (!found)
      {
         FUNC6(playlist, "DETECT");
         FUNC5(playlist, "DETECT");
      }
   }

   /* In all cases, update file on disk */
   FUNC7(playlist);

   return FUNC0(NULL, NULL, 0, 0);
}