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
typedef  int /*<<< orphan*/  retro_task_callback_t ;
typedef  enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
typedef  int /*<<< orphan*/  content_ctx_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_LOAD_CORE ; 
 int /*<<< orphan*/  FRONTEND_FORK_CORE ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

bool FUNC4(
      const char *core_path,
      const char *fullpath,
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{
   FUNC2(RARCH_PATH_CORE, core_path);

   /* Load core */
   FUNC0(CMD_EVENT_LOAD_CORE, NULL);

#ifndef HAVE_DYNAMIC
   /* Fork core? */
   if (!FUNC1(FRONTEND_FORK_CORE))
      return false;
#endif

   /* Preliminary stuff that has to be done before we
    * load the actual content. Can differ per mode. */
   FUNC3(type, true);

   return true;
}