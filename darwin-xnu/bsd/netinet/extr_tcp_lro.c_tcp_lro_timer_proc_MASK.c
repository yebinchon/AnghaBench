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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ lro_timer_set ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  tcp_lro_lock ; 

__attribute__((used)) static void
FUNC3(void *arg1, void *arg2)
{
#pragma unused(arg1, arg2)

	FUNC0(&tcp_lro_lock);
	lro_timer_set = 0;
	FUNC1(&tcp_lro_lock);
	FUNC2();
}