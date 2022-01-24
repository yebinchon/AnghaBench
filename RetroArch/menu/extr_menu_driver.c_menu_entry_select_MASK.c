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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  menu_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ACTION_SELECT ; 
 scalar_t__ menu_driver_selection_ptr ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(uint32_t i)
{
   menu_entry_t     entry;

   menu_driver_selection_ptr = i;

   FUNC2(&entry);
   FUNC1(&entry, 0, i, NULL, false);

   return FUNC0(&entry, (size_t)i, MENU_ACTION_SELECT);
}