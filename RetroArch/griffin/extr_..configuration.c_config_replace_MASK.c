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
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_CTL_UNSET_BLOCK_CONFIG_READ ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 int FUNC7 (TYPE_1__*) ; 

bool FUNC8(bool config_replace_save_on_exit, char *path)
{
   content_ctx_info_t content_info = {0};
   const char *rarch_path_config   = FUNC2(RARCH_PATH_CONFIG);

   /* If config file to be replaced is the same as the
    * current config file, exit. */
   if (FUNC6(path, rarch_path_config))
      return false;

   if (config_replace_save_on_exit && !FUNC3(RARCH_PATH_CONFIG))
      FUNC0(rarch_path_config);

   FUNC4(RARCH_PATH_CONFIG, path);

   FUNC5(RARCH_CTL_UNSET_BLOCK_CONFIG_READ, NULL);

   /* Load core in new config. */
   FUNC1(RARCH_PATH_CORE);

   return FUNC7(&content_info);
}