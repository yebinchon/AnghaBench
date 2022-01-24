#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct item_cheat {scalar_t__ idx; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_2__ {int size; struct item_cheat* cheats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHEAT_HANDLER_TYPE_EMU ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CHEAT_ADD_TOP_SUCCESS ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PREVENT_POPULATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC2 (struct item_cheat*,struct item_cheat*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   int i;
   struct item_cheat tmp;
   char msg[256] ;
   bool          refresh = false ;
   unsigned int new_size = FUNC0() + 1;

   FUNC4(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   FUNC3(RARCH_MENU_CTL_SET_PREVENT_POPULATE, NULL);
   FUNC1(new_size, CHEAT_HANDLER_TYPE_EMU);

   FUNC2(&tmp, &cheat_manager_state.cheats[cheat_manager_state.size-1], sizeof(struct item_cheat));
   tmp.idx = 0 ;

   for (i = cheat_manager_state.size-2 ; i >=0 ; i--)
   {
      FUNC2(&cheat_manager_state.cheats[i+1],
            &cheat_manager_state.cheats[i], sizeof(struct item_cheat));
      cheat_manager_state.cheats[i+1].idx++ ;
   }

   FUNC2(&cheat_manager_state.cheats[0], &tmp, sizeof(struct item_cheat));

   FUNC7(msg, FUNC5(MSG_CHEAT_ADD_TOP_SUCCESS), sizeof(msg));
   msg[sizeof(msg) - 1] = 0;

   FUNC6(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   return 0 ;
}