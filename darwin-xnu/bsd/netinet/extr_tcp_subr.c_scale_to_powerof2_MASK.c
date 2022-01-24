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

__attribute__((used)) static int
FUNC1(int size) {
	/* Handle special case of size = 0 */
	int ret = size ? size : 1;

	if (!FUNC0(ret)) {
		while (!FUNC0(size)) {
			/*
			 * Clear out least significant
			 * set bit till size is left with
			 * its highest set bit at which point
			 * it is rounded down power of two.
			 */
			size = size & (size -1);
		}

		/* Check for overflow when rounding up */
		if (0 == (size << 1)) {
			ret = size;
		} else {
			ret = size << 1;
		}
	}

	return (ret);
}