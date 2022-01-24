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
struct kasan_test {int (* func ) (struct kasan_test*) ;int result; char* name; int /*<<< orphan*/  (* cleanup ) (struct kasan_test*) ;} ;

/* Variables and functions */
 int TEST_FAIL_BADFAULT ; 
 int TEST_FAIL_NOFAULT ; 
 int TEST_INVALID ; 
 int TEST_PASS ; 
 int TEST_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int in_test ; 
 int /*<<< orphan*/  jbuf ; 
 int num_xnutests ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int FUNC2 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC3 (struct kasan_test*) ; 

__attribute__((used)) static int
FUNC4(struct kasan_test *test_list, int testno, int fail)
{
	int status = TEST_UNKNOWN;
	struct kasan_test *t = &test_list[testno];

	if (testno < 0 || testno >= num_xnutests || !t->func) {
		FUNC1("KASan: test.%02d INVALID\n", testno);
		return TEST_INVALID;
	}

	// printf("KASan: test.%02d RUNNING (%s)\n", testno, t->name);

	if (!fail) {
		in_test = 1;
	}

	if (FUNC0(jbuf) == 0) {
		t->result = 0;
		int ret = t->func(t);
		if (ret) {
			FUNC1("KASan: test.%02d SETUP FAIL (%s)\n", testno, t->name);
			status = ret;
		} else {
			/* did not fault when it should have */
			FUNC1("KASan: test.%02d FAIL (%s)\n", testno, t->name);
			status = TEST_FAIL_NOFAULT;
		}
	} else {
		if (t->result) {
			/* faulted, but at the wrong place */
			FUNC1("KASan: test.%02d FAIL %d (%s)\n", testno, t->result, t->name);
			status = TEST_FAIL_BADFAULT;
		} else {
			FUNC1("KASan: test.%02d PASS (%s)\n", testno, t->name);
			status = TEST_PASS;
		}
	}
	in_test = 0;
	if (t->cleanup) {
		t->cleanup(t);
	}

	return status;
}