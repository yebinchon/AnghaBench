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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * test_counts ; 
 int /*<<< orphan*/  test_name ; 
 size_t test_status ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 

void
FUNC2(void)
{

	test_counts[test_status]++;
	FUNC0("%s: %s\n", test_name, FUNC1(test_status));
}