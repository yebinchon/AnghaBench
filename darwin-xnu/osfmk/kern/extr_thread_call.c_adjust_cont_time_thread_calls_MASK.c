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
typedef  int /*<<< orphan*/ * thread_call_group_t ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  TCF_CONTINUOUS ; 
 int THREAD_CALL_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * thread_call_groups ; 

void
FUNC3(void)
{
	spl_t s = FUNC1();

	for (int i = 0; i < THREAD_CALL_INDEX_MAX; i++) {
		thread_call_group_t group = &thread_call_groups[i];

		/* only the continuous timers need to be re-armed */

		FUNC0(NULL, group, TCF_CONTINUOUS);
	}

	FUNC2(s);
}