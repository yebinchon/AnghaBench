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
 int /*<<< orphan*/  DEVFS_CHAR ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  RANDOM_MAJOR ; 
 int /*<<< orphan*/  RANDOM_MINOR ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  URANDOM_MINOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  random_cdevsw ; 

void
FUNC4(void)
{
	int ret;

	ret = FUNC0(RANDOM_MAJOR, &random_cdevsw);
	if (ret < 0) {
		FUNC3("random_init: failed to allocate a major number!");
	}

	FUNC1(FUNC2 (ret, RANDOM_MINOR), DEVFS_CHAR,
		UID_ROOT, GID_WHEEL, 0666, "random", 0);

	/*
	 * also make urandom
	 * (which is exactly the same thing in our context)
	 */
	FUNC1(FUNC2 (ret, URANDOM_MINOR), DEVFS_CHAR,
		UID_ROOT, GID_WHEEL, 0666, "urandom", 0);

}