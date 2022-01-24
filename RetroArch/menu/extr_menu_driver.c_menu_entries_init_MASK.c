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
typedef  int /*<<< orphan*/  menu_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_SETTING_CTL_NEW ; 
 int /*<<< orphan*/ * menu_entries_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  menu_entries_list_settings ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(void)
{
   if (!(menu_entries_list = (menu_list_t*)FUNC2()))
      goto error;

   FUNC3(MENU_SETTING_CTL_NEW, &menu_entries_list_settings);

   if (!menu_entries_list_settings)
      goto error;

   return true;

error:
   FUNC1();
   FUNC0();

   return false;
}