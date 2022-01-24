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
 int CORE_TYPE_DUMMY ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int pending_subsystem_init ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

bool FUNC3(
      const char *fullpath,
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{
   pending_subsystem_init = true;

   /* Load content */
   if (!FUNC2(content_info, true, false))
   {
      FUNC1();
      return false;
   }

#ifdef HAVE_MENU
   /* Push quick menu onto menu stack */
   if (type != CORE_TYPE_DUMMY)
      menu_driver_ctl(RARCH_MENU_CTL_SET_PENDING_QUICK_MENU, NULL);
#endif

   return true;
}