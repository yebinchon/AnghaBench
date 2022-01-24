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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lt_lck_spin_t ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  lt_thread_lock_grabbed ; 
 int /*<<< orphan*/  lt_thread_lock_success ; 

__attribute__((used)) static void
FUNC3()
{
	FUNC0();
	while (!lt_thread_lock_grabbed) {
		FUNC2();
		FUNC0();
	}
	lt_thread_lock_success = FUNC1(&lt_lck_spin_t);
	FUNC0();
}