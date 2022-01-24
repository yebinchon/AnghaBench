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
typedef  scalar_t__ thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AST_KPERF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(
	thread_t	thread)
{
	/* safety check */
	if (thread != FUNC1())
		if( !FUNC2() )
			FUNC3("unsafe act_set_kperf operation");

	FUNC0( thread, AST_KPERF );
}