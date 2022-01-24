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
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int WARMUP_ITER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static kern_return_t
FUNC5(
	int iter)
{
	int i;

	FUNC0();

	//warming up the test for lock
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC2();
		FUNC4();
	}

	FUNC1();

	for (i = 0; i < iter; i++) {
		FUNC2();
		FUNC4();
	}

	FUNC0();

	//warming up the test for try_lock
	for (i = 0; i < WARMUP_ITER; i++) {
		FUNC3();
		FUNC4();
	}

	FUNC1();

	for (i = 0; i < iter; i++) {
		FUNC3();
		FUNC4();
	}

	return KERN_SUCCESS;
}