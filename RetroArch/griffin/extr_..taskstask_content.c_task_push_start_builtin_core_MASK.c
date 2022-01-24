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
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PENDING_QUICK_MENU ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

bool FUNC5(
      content_ctx_info_t *content_info,
      enum rarch_core_type type,
      retro_task_callback_t cb,
      void *user_data)
{
   /* Clear content path */
   FUNC1(RARCH_PATH_CONTENT);

   /* Preliminary stuff that has to be done before we
    * load the actual content. Can differ per mode. */
   FUNC3(type, true);

   /* Load content */
   if (!FUNC4(content_info, true, false))
   {
      FUNC2();
      return false;
   }

   /* Push quick menu onto menu stack */
#ifdef HAVE_MENU
   menu_driver_ctl(RARCH_MENU_CTL_SET_PENDING_QUICK_MENU, NULL);
#endif

   return true;
}