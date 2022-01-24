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
struct TYPE_6__ {int enabled; int /*<<< orphan*/  code; int /*<<< orphan*/  index; } ;
typedef  TYPE_2__ retro_ctx_cheat_info_t ;
struct TYPE_7__ {unsigned int size; TYPE_1__* cheats; } ;
struct TYPE_5__ {scalar_t__ handler; int /*<<< orphan*/  code; scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CHEAT_HANDLER_TYPE_EMU ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_APPLYING_CHEAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ cheat_manager_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
#ifdef HAVE_CHEEVOS
   bool data_bool  = false;

#endif
   unsigned i, idx = 0;

   if (!cheat_manager_state.cheats)
      return;

   FUNC1();

   for (i = 0; i < cheat_manager_state.size; i++)
   {
      if (cheat_manager_state.cheats[i].state && cheat_manager_state.cheats[i].handler == CHEAT_HANDLER_TYPE_EMU)
      {
         retro_ctx_cheat_info_t cheat_info;

         cheat_info.index = idx++;
         cheat_info.enabled = true;
         cheat_info.code = cheat_manager_state.cheats[i].code;

         if (!FUNC6(cheat_info.code))
            FUNC2(&cheat_info);
      }
   }

   if (cheat_manager_state.size > 0)
   {
      FUNC5(FUNC3(MSG_APPLYING_CHEAT), 1, 180, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      FUNC0("%s\n", FUNC3(MSG_APPLYING_CHEAT));
   }

#ifdef HAVE_CHEEVOS
   data_bool = idx != 0;
   rcheevos_apply_cheats(&data_bool);
#endif
}