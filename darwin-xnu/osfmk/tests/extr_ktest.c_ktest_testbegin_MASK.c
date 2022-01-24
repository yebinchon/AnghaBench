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
 int /*<<< orphan*/  ktest_current_time ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char const* ktest_test_name ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(const char * test_name) {
	ktest_current_time = FUNC1();
	ktest_test_name = test_name;
	FUNC0(test_name);
}