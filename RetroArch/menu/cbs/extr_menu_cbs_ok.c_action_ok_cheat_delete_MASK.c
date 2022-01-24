#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct item_cheat {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_5__ {size_t idx; } ;
struct TYPE_7__ {int size; TYPE_2__* cheats; TYPE_1__ working_cheat; } ;
struct TYPE_6__ {int /*<<< orphan*/ * desc; int /*<<< orphan*/ * code; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHEAT_HANDLER_TYPE_RETRO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CHEAT_DELETE_SUCCESS ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_4__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char msg[256];
   size_t new_selection_ptr = 0;
   unsigned int new_size    = FUNC0() - 1;

   if (new_size >0)
   {
      unsigned i;
      if (cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].code)
      {
         FUNC2(cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].code);
         cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].code = NULL ;
      }
      if (cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].desc)
      {
         FUNC2(cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].desc);
         cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx].desc = NULL ;
      }
      for (i = cheat_manager_state.working_cheat.idx ; i <cheat_manager_state.size-1  ; i++)
      {
         FUNC3(&cheat_manager_state.cheats[i], &cheat_manager_state.cheats[i+1], sizeof(struct item_cheat ));
         cheat_manager_state.cheats[i].idx-- ;
      }
      cheat_manager_state.cheats[cheat_manager_state.size-1].code = NULL ;
      cheat_manager_state.cheats[cheat_manager_state.size-1].desc = NULL ;
   }

   FUNC1(new_size, CHEAT_HANDLER_TYPE_RETRO);

   FUNC10(msg, FUNC8(MSG_CHEAT_DELETE_SUCCESS), sizeof(msg));
   msg[sizeof(msg) - 1] = 0;

   FUNC9(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   new_selection_ptr = FUNC6();
   FUNC5(&new_selection_ptr, 0, 1);
   FUNC7(new_selection_ptr);

   FUNC4(RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_PATH, NULL);
   FUNC4(RARCH_MENU_CTL_UPDATE_SAVESTATE_THUMBNAIL_IMAGE, NULL);

   return 0;
}