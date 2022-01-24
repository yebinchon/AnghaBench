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
typedef  int /*<<< orphan*/  core_option_manager_t ;

/* Variables and functions */
 unsigned int MENU_SETTINGS_CORE_OPTION_START ; 
 int /*<<< orphan*/  RARCH_CTL_CORE_OPTIONS_LIST_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC2(unsigned type,
      const char *label)
{
   unsigned idx                = type - MENU_SETTINGS_CORE_OPTION_START;
   core_option_manager_t *coreopts = NULL;

   if (FUNC1(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts))
      FUNC0(coreopts, idx);

   return 0;
}