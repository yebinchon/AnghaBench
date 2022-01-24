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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tz_slock ; 
 int /*<<< orphan*/  tz_slock_attr ; 
 int /*<<< orphan*/  tz_slock_grp ; 
 int /*<<< orphan*/  tz_slock_grp_attr ; 

void
FUNC4(void)
{
	/* allocate lock group attribute and group */
	tz_slock_grp_attr = FUNC2();

	tz_slock_grp =  FUNC1("tzlock", tz_slock_grp_attr);

	/* Allocate lock attribute */
	tz_slock_attr = FUNC0();

	/* Allocate the spin lock */
	tz_slock = FUNC3(tz_slock_grp, tz_slock_attr);
}