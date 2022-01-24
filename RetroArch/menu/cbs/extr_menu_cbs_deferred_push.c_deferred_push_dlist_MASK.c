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
typedef  int /*<<< orphan*/  menu_displaylist_info_t ;
typedef  enum menu_displaylist_ctl_state { ____Placeholder_menu_displaylist_ctl_state } menu_displaylist_ctl_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(menu_displaylist_info_t *info, enum menu_displaylist_ctl_state state)
{
   if (!FUNC1(state, info))
      return FUNC0();
   FUNC2(info);
   return 0;
}