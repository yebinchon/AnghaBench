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
 scalar_t__ lt_done_threads ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ lt_target_done_threads ; 

__attribute__((used)) static void
FUNC2()
{
	FUNC0();
	/* Spin to reduce dependencies */
	while (lt_done_threads < lt_target_done_threads) {
		FUNC1();
		FUNC0();
	}
	FUNC0();
}