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

/* Variables and functions */
 size_t TEST_MTX_LOCK_SPIN_ALWAYS_STATS ; 
 size_t TEST_MTX_LOCK_SPIN_STATS ; 
 size_t TEST_MTX_LOCK_STATS ; 
 int TEST_MTX_MAX_STATS ; 
 size_t TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS ; 
 size_t TEST_MTX_TRY_LOCK_SPIN_STATS ; 
 size_t TEST_MTX_TRY_LOCK_STATS ; 
 int WARMUP_ITER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (int,char*,int) ; 
 int FUNC10 (char*,int,char*,...) ; 
 int /*<<< orphan*/  test_mtx ; 
 scalar_t__ FUNC11 () ; 

int
FUNC12(
	int iter, char *buffer, int size)
{
	int i;
	uint64_t tot_time[TEST_MTX_MAX_STATS];
	uint64_t run_time[TEST_MTX_MAX_STATS];
	uint64_t start;
	uint64_t start_run;

	//warming up the test
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC1(&test_mtx);
		FUNC7(&test_mtx);
	}

	start_run = FUNC11();
	start = FUNC8();

	for (i = 0; i < iter; i++) {
		FUNC1(&test_mtx);
		FUNC7(&test_mtx);
	}

	FUNC0(FUNC8() - start, &tot_time[TEST_MTX_LOCK_STATS]);
	FUNC0(FUNC11() - start_run, &run_time[TEST_MTX_LOCK_STATS]);

	//warming up the test
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC4(&test_mtx);
		FUNC7(&test_mtx);
	}

	start_run = FUNC11();
	start = FUNC8();

	for (i = 0; i < iter; i++) {
		FUNC4(&test_mtx);
		FUNC7(&test_mtx);
	}

	FUNC0(FUNC8() - start, &tot_time[TEST_MTX_TRY_LOCK_STATS]);
	FUNC0(FUNC11() - start_run, &run_time[TEST_MTX_TRY_LOCK_STATS]);

	//warming up the test
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC2(&test_mtx);
		FUNC7(&test_mtx);
	}

	start_run = FUNC11();
	start = FUNC8();

	for (i = 0; i < iter; i++) {
		FUNC2(&test_mtx);
		FUNC7(&test_mtx);
	}

	FUNC0(FUNC8() - start, &tot_time[TEST_MTX_LOCK_SPIN_STATS]);
	FUNC0(FUNC11() - start_run, &run_time[TEST_MTX_LOCK_SPIN_STATS]);

	//warming up the test
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC3(&test_mtx);
		FUNC7(&test_mtx);
	}

	start_run = FUNC11();
	start = FUNC8();

	for (i = 0; i < iter; i++) {
		FUNC3(&test_mtx);
		FUNC7(&test_mtx);
	}

	FUNC0(FUNC8() - start, &tot_time[TEST_MTX_LOCK_SPIN_ALWAYS_STATS]);
	FUNC0(FUNC11() - start_run, &run_time[TEST_MTX_LOCK_SPIN_ALWAYS_STATS]);

	//warming up the test
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC5(&test_mtx);
		FUNC7(&test_mtx);
	}

	start_run = FUNC11();
	start = FUNC8();

	for (i = 0; i < iter; i++) {
		FUNC5(&test_mtx);
		FUNC7(&test_mtx);
	}

	FUNC0(FUNC8() - start, &tot_time[TEST_MTX_TRY_LOCK_SPIN_STATS]);
	FUNC0(FUNC11() - start_run, &run_time[TEST_MTX_TRY_LOCK_SPIN_STATS]);

	//warming up the test
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC6(&test_mtx);
		FUNC7(&test_mtx);
	}

	start_run = FUNC11();
	start = FUNC8();

	for (i = 0; i < iter; i++) {
		FUNC6(&test_mtx);
		FUNC7(&test_mtx);
	}

	FUNC0(FUNC8() - start, &tot_time[TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS]);
	FUNC0(FUNC11() - start_run, &run_time[TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS]);

	int string_off = 0;
	int ret = 0;

	ret = FUNC10(&buffer[string_off], size, "\n");
	size -= ret;
	string_off += ret;

	for (i = 0; i < TEST_MTX_MAX_STATS - 2; i++) {

		ret = FUNC10(&buffer[string_off], size, "total time %llu ns total run time %llu ns ", tot_time[i], run_time[i]);
		size -= ret;
		string_off += ret;

		ret = FUNC9(i, &buffer[string_off], size);
		size -= ret;
		string_off += ret;

		ret = FUNC10(&buffer[string_off], size, "\n");
		size -= ret;
		string_off += ret;
	}

	return string_off;
}