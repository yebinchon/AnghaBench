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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntp_lock ; 
 int /*<<< orphan*/  ntp_lock_attr ; 
 int /*<<< orphan*/  ntp_lock_grp ; 
 int /*<<< orphan*/  ntp_lock_grp_attr ; 
 int /*<<< orphan*/  time_freq ; 
 int /*<<< orphan*/  time_offset ; 
 scalar_t__ updated ; 

void
FUNC6(void)
{

	FUNC0(time_offset);
	FUNC0(time_freq);

	ntp_lock_grp_attr = FUNC4();
	ntp_lock_grp =  FUNC3("ntp_lock", ntp_lock_grp_attr);
	ntp_lock_attr = FUNC2();
	ntp_lock = FUNC5(ntp_lock_grp, ntp_lock_attr);

	updated = 0;

	FUNC1();
}