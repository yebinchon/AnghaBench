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
typedef  void* zone_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 int /*<<< orphan*/  threads_count ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 void* FUNC5 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

kern_return_t
FUNC7()
{
	zone_t test_zone;
	void * test_ptr;

	T_SETUPBEGIN;
	test_zone = FUNC5(sizeof(uint64_t), 100 * sizeof(uint64_t), sizeof(uint64_t), "test_uint64_zone");
	FUNC1(test_zone, NULL);

	FUNC0(FUNC6(test_zone), 0, NULL);
	T_SETUPEND;

	FUNC1(test_ptr = FUNC3(test_zone), NULL);

	FUNC4(test_zone, test_ptr);

	/* A sample report for perfdata */
	FUNC2("num_threads_at_ktest", threads_count, "count", "# of threads in system at zalloc_test");

	return KERN_SUCCESS;
}