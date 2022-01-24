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
 char* KEYBAGDTEST_PATH ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PROTECTION_CLASS_A ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char* const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*) ; 

int
FUNC6(void) {
	int result = -1;

	/*
	 * Pass in the path to keybagdTest instead. By doing this, we bypass
	 * the shortcut to get in to the keybag via IOKit and instead use the
	 * pre-existing command line tool.
	 *
	 * This also goes through the normal "lock → locking (10s) → locked"
	 * flow that would normally occuring during system runtime when the
	 * lock button is depressed. To ensure that our single threaded test
	 * works properly in this case, poll until we can't create a class A
	 * file to be safe.
	 */
	char * const kbd_args[] = {KEYBAGDTEST_PATH, "lock", NULL};
	result = FUNC3(kbd_args);
	if(result) {
		return result;
	}

	/*
	 * Delete the file if it is present. Note that this may fail if the
	 * file is actually not there. So don't bomb out if we can't delete
	 * this file right now.
	 */
	(void) FUNC5("/private/var/foo_test_file");

	while(1) {
		int dp_fd;

		dp_fd = FUNC1(
			"/private/var/foo_test_file",
			O_RDWR|O_CREAT,
			PROTECTION_CLASS_A,
			0
		);

		if(dp_fd >= 0) {
			/* delete it and sleep */
			FUNC0(dp_fd);
			result = FUNC5("/private/var/foo_test_file");

			if(result) {
				return result;
			}

			FUNC4();
			FUNC2(1);
		} else {
			/* drop out of our polling loop. */
			break;
		}
	}

	/*
	 * Note that our loop breakout condition is whether or not we can
	 * create a class A file, so that loop may execute up to 10 times
	 * (due to the 10s grace period). By the time we get here, we assume
	 * that we didn't hit any of the error cases above.
	 */

	return 0;
}