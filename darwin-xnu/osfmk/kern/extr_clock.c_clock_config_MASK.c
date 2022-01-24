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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 scalar_t__ NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  settime_lock ; 
 int /*<<< orphan*/  settime_lock_attr ; 
 int /*<<< orphan*/  settime_lock_grp ; 
 int /*<<< orphan*/  settime_lock_grp_attr ; 
 int /*<<< orphan*/  ticks_per_sec ; 

void
FUNC8(void)
{

	FUNC0();

	settime_lock_grp_attr = FUNC4();
	settime_lock_grp = FUNC3("settime grp", settime_lock_grp_attr);
	settime_lock_attr = FUNC2();
	FUNC5(&settime_lock, settime_lock_grp, settime_lock_attr);

	FUNC1();

	FUNC7();

	FUNC6((uint64_t)NSEC_PER_SEC, &ticks_per_sec);
}