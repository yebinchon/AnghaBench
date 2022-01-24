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
 int TEST_INVALID ; 
 int TEST_PASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int num_xnutests ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  xnu_tests ; 

void
FUNC2(int testno, int fail)
{
	int i = 1;
	int pass = 0, total = 0;
	int ret;

	if (testno == -1) {
		/* shorthand for all tests */
		testno = (1U << (num_xnutests-1)) - 1;
	}

	while (testno) {
		if (testno & 0x1) {
			ret = FUNC0(xnu_tests, i, fail);
			if (ret == TEST_PASS) {
				pass++;
			}
			if (ret != TEST_INVALID) {
				total++;
			}
		}

		i++;
		testno >>= 1;
	}
	FUNC1("KASan: TEST SUMMARY %d/%d passed\n", pass, total);
}