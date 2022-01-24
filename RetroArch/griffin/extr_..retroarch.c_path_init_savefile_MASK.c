#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_AUTOSAVE_INIT ; 
 int /*<<< orphan*/  MSG_SRAM_WILL_NOT_BE_SAVED ; 
 int /*<<< orphan*/  RARCH_CTL_IS_SRAM_SAVE_DISABLED ; 
 int /*<<< orphan*/  RARCH_CTL_IS_SRAM_USED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int rarch_use_sram ; 

void FUNC4(void)
{
   bool should_sram_be_used = FUNC3(RARCH_CTL_IS_SRAM_USED, NULL)
      && !FUNC3(RARCH_CTL_IS_SRAM_SAVE_DISABLED, NULL);

   rarch_use_sram    = should_sram_be_used;

   if (!FUNC3(RARCH_CTL_IS_SRAM_USED, NULL))
   {
      FUNC0("%s\n",
            FUNC2(MSG_SRAM_WILL_NOT_BE_SAVED));
      return;
   }

   FUNC1(CMD_EVENT_AUTOSAVE_INIT, NULL);
}