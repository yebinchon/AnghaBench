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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  tty_lck_attr ; 
 int /*<<< orphan*/  tty_lck_grp ; 
 int /*<<< orphan*/  tty_lck_grp_attr ; 

void
FUNC3(void)
{
	tty_lck_grp_attr = FUNC2();
	tty_lck_grp = FUNC1("tty",  tty_lck_grp_attr);
	tty_lck_attr = FUNC0();
}