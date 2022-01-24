#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int symbols_inited; int /*<<< orphan*/  (* retro_deinit ) () ;scalar_t__ inited; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVERS_CMD_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ current_core ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ runloop_remaps_content_dir_active ; 
 scalar_t__ runloop_remaps_core_active ; 
 scalar_t__ runloop_remaps_game_active ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(bool reinit)
{
#ifdef HAVE_CHEEVOS
   rcheevos_unload();
#endif

   FUNC0("Unloading game..\n");
   FUNC2();

   FUNC0("Unloading core..\n");

   FUNC9(NULL);

   if (current_core.inited)
      current_core.retro_deinit();

   FUNC0("Unloading core symbols..\n");
   FUNC8(&current_core);
   current_core.symbols_inited = false;

   if (reinit)
      FUNC3(DRIVERS_CMD_ALL);

   FUNC1();
   FUNC6();

   if (     runloop_remaps_core_active
         || runloop_remaps_content_dir_active
         || runloop_remaps_game_active
      )
      FUNC4(true);
}