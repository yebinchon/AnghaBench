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
typedef  scalar_t__ uint64_t ;
typedef  size_t uint32_t ;
struct munger_test {size_t mt_nout; scalar_t__* mt_expected; int /*<<< orphan*/  mt_name; int /*<<< orphan*/  (* mt_func ) (scalar_t__*) ;int /*<<< orphan*/  mt_in_words; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int MT_MAX_ARGS ; 
 size_t MT_TEST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,size_t*) ; 
 struct munger_test* munger_tests ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC5()
{
	uint64_t data[MT_MAX_ARGS];
	uint32_t i, j;

	for (i = 0; i < MT_TEST_COUNT; i++) {
		struct munger_test *test = &munger_tests[i];
		int pass = 1;

		FUNC1("Testing %s", test->mt_name);

		FUNC3(test->mt_in_words, sizeof(data), (uint32_t*)data);
		test->mt_func(data);

		for (j = 0; j < test->mt_nout; j++) {
			if (data[j] != test->mt_expected[j]) {
				FUNC0("Index %d: expected %llx, got %llx.", j, test->mt_expected[j], data[j]);
				pass = 0;
			}
		}
		if (pass) {
			FUNC2(test->mt_name);
		}
	}
}