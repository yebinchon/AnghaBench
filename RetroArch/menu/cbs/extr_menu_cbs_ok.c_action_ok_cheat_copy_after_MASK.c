#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct item_cheat {int idx; void* desc; void* code; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_3__ {size_t idx; } ;
struct TYPE_4__ {int size; TYPE_1__ working_cheat; struct item_cheat* cheats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHEAT_HANDLER_TYPE_RETRO ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CHEAT_COPY_AFTER_SUCCESS ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PREVENT_POPULATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_2__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC2 (struct item_cheat*,struct item_cheat*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   int i;
   struct item_cheat tmp;
   char msg[256];
   bool          refresh = false ;
   unsigned int new_size = FUNC0() + 1;

   FUNC1(new_size, CHEAT_HANDLER_TYPE_RETRO);

   FUNC2(&tmp, &cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx], sizeof(struct item_cheat));
   tmp.idx = cheat_manager_state.working_cheat.idx+1 ;
   if (tmp.code)
      tmp.code = FUNC7(tmp.code);
   if (tmp.desc)
      tmp.desc = FUNC7(tmp.desc);

   for (i = cheat_manager_state.size-2 ; i >= (int)(cheat_manager_state.working_cheat.idx+1); i--)
   {
      FUNC2(&cheat_manager_state.cheats[i+1], &cheat_manager_state.cheats[i], sizeof(struct item_cheat));
      cheat_manager_state.cheats[i+1].idx++ ;
   }

   FUNC2(&cheat_manager_state.cheats[cheat_manager_state.working_cheat.idx+1], &tmp, sizeof(struct item_cheat ));

   FUNC4(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   FUNC3(RARCH_MENU_CTL_SET_PREVENT_POPULATE, NULL);

   FUNC8(msg, FUNC5(MSG_CHEAT_COPY_AFTER_SUCCESS), sizeof(msg));
   msg[sizeof(msg) - 1] = 0;

   FUNC6(msg, 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   return 0 ;
}