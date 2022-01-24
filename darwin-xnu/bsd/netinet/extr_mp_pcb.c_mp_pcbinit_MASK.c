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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_lock ; 
 int /*<<< orphan*/  mp_lock_attr ; 
 int /*<<< orphan*/  mp_lock_grp ; 
 int /*<<< orphan*/  mp_lock_grp_attr ; 
 int /*<<< orphan*/  mp_timeout_lock ; 

void
FUNC5(void)
{
	static int mp_initialized = 0;

	FUNC0(!mp_initialized);
	mp_initialized = 1;

	mp_lock_grp_attr = FUNC3();
	mp_lock_grp = FUNC2("multipath", mp_lock_grp_attr);
	mp_lock_attr = FUNC1();
	FUNC4(&mp_lock, mp_lock_grp, mp_lock_attr);
	FUNC4(&mp_timeout_lock, mp_lock_grp, mp_lock_attr);
}