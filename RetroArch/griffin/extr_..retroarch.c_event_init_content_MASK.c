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
struct TYPE_4__ {int /*<<< orphan*/  cheevos_hardcore_mode_enable; int /*<<< orphan*/  cheevos_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef  TYPE_2__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_NETPLAY_INIT ; 
 scalar_t__ CORE_TYPE_DUMMY ; 
 scalar_t__ CORE_TYPE_PLAIN ; 
 int /*<<< orphan*/  MSG_SKIPPING_SRAM_LOAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* configuration_settings ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ current_core_type ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int rarch_use_sram ; 
 int runloop_core_running ; 

__attribute__((used)) static bool FUNC12(void)
{
   bool contentless = false;
   bool is_inited   = false;

   FUNC6(&contentless, &is_inited);

   rarch_use_sram   = (current_core_type == CORE_TYPE_PLAIN)
      && !contentless;

   /* No content to be loaded for dummy core,
    * just successfully exit. */
   if (current_core_type == CORE_TYPE_DUMMY)
      return true;

   FUNC8();

   FUNC6(&contentless, &is_inited);

   if (!contentless)
      FUNC11();

   if (!FUNC7())
   {
      runloop_core_running = false;
      return false;
   }

   FUNC5();

   if (FUNC9())
      FUNC0("%s.\n",
            FUNC10(MSG_SKIPPING_SRAM_LOAD));

/*
   Since the operations are asynchronous we can't
   guarantee users will not use auto_load_state to cheat on
   achievements so we forbid auto_load_state from happening
   if cheevos_enable and cheevos_hardcode_mode_enable
   are true.
*/
#ifdef HAVE_CHEEVOS
   {
      settings_t *settings = configuration_settings;
      if (  !settings->bools.cheevos_enable ||
            !settings->bools.cheevos_hardcore_mode_enable)
         command_event_load_auto_state();
   }
#else
   FUNC4();
#endif

   FUNC1();
   FUNC2();
   FUNC3(CMD_EVENT_NETPLAY_INIT, NULL);

   return true;
}