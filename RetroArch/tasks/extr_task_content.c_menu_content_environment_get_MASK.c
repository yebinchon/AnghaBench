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
struct rarch_main_wrap {int touched; int /*<<< orphan*/ * libretro_path; int /*<<< orphan*/ * content_path; int /*<<< orphan*/ * state_path; int /*<<< orphan*/ * sram_path; int /*<<< orphan*/ * config_path; int /*<<< orphan*/  verbose; int /*<<< orphan*/  no_content; } ;
struct TYPE_3__ {int /*<<< orphan*/  load_no_content; } ;
typedef  TYPE_1__ rarch_system_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_DIR_SAVEFILE ; 
 int /*<<< orphan*/  RARCH_DIR_SAVESTATE ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_LIBRETRO ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_VERBOSITY ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(int *argc, char *argv[],
      void *args, void *params_data)
{
   struct rarch_main_wrap *wrap_args = (struct rarch_main_wrap*)params_data;
   rarch_system_info_t *sys_info     = FUNC5();

   if (!wrap_args)
      return;

   wrap_args->no_content       = sys_info->load_no_content;

   if (!FUNC4(RARCH_OVERRIDE_SETTING_VERBOSITY, NULL))
      wrap_args->verbose       = FUNC7();

   wrap_args->touched          = true;
   wrap_args->config_path      = NULL;
   wrap_args->sram_path        = NULL;
   wrap_args->state_path       = NULL;
   wrap_args->content_path     = NULL;

   if (!FUNC3(RARCH_PATH_CONFIG))
      wrap_args->config_path   = FUNC2(RARCH_PATH_CONFIG);
   if (!FUNC1(RARCH_DIR_SAVEFILE))
      wrap_args->sram_path     = FUNC0(RARCH_DIR_SAVEFILE);
   if (!FUNC1(RARCH_DIR_SAVESTATE))
      wrap_args->state_path    = FUNC0(RARCH_DIR_SAVESTATE);
   if (!FUNC3(RARCH_PATH_CONTENT))
      wrap_args->content_path  = FUNC2(RARCH_PATH_CONTENT);
   if (!FUNC4(RARCH_OVERRIDE_SETTING_LIBRETRO, NULL))
      wrap_args->libretro_path = FUNC6(FUNC2(RARCH_PATH_CORE)) ? NULL :
         FUNC2(RARCH_PATH_CORE);

}