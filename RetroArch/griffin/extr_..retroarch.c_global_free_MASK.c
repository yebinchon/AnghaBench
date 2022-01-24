#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct global {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  remapfile; } ;
struct TYPE_7__ {TYPE_1__ name; } ;
typedef  TYPE_2__ global_t ;
struct TYPE_8__ {int has_set_input_descriptors; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_LOG_FILE_DEINIT ; 
 int /*<<< orphan*/  CMD_EVENT_RECORD_DEINIT ; 
 int /*<<< orphan*/  RARCH_CTL_UNSET_BPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_UNSET_IPS_PREF ; 
 int /*<<< orphan*/  RARCH_CTL_UNSET_UPS_PREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_5__ current_core ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ g_extern ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int rarch_block_config_read ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int rarch_is_sram_load_disabled ; 
 int rarch_is_sram_save_disabled ; 
 int rarch_patch_blocked ; 
 int rarch_use_sram ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int runloop_overrides_active ; 
 int runloop_remaps_content_dir_active ; 
 int runloop_remaps_core_active ; 
 int runloop_remaps_game_active ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void)
{
   global_t *global = NULL;

   FUNC1();

   FUNC6();
   FUNC0(CMD_EVENT_RECORD_DEINIT, NULL);
   FUNC0(CMD_EVENT_LOG_FILE_DEINIT, NULL);

   rarch_block_config_read               = false;
   rarch_is_sram_load_disabled           = false;
   rarch_is_sram_save_disabled           = false;
   rarch_use_sram                        = false;
   FUNC7(RARCH_CTL_UNSET_BPS_PREF, NULL);
   FUNC7(RARCH_CTL_UNSET_IPS_PREF, NULL);
   FUNC7(RARCH_CTL_UNSET_UPS_PREF, NULL);
   rarch_patch_blocked                   = false;
   runloop_overrides_active              = false;
   runloop_remaps_core_active            = false;
   runloop_remaps_game_active            = false;
   runloop_remaps_content_dir_active     = false;

   current_core.has_set_input_descriptors = false;

   global = &g_extern;
   FUNC5();
   FUNC2();

   if (global)
   {
      if (!FUNC9(global->name.remapfile))
         FUNC3(global->name.remapfile);
      FUNC4(global, 0, sizeof(struct global));
   }
   FUNC8();
}