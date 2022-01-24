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
typedef  int UINT ;
typedef  int /*<<< orphan*/  TRACKING_LIST ;
typedef  int /*<<< orphan*/  CALLSTACK_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 () ; 
 int TRACKING_NUM_ARRAY ; 
 void* cs_lock ; 
 int do_not_get_callstack ; 
 int /*<<< orphan*/ ** hashlist ; 
 scalar_t__ obj_id ; 
 void* obj_id_lock ; 
 void* obj_lock ; 

void FUNC4()
{
	UINT i;
	CALLSTACK_DATA *s;

	// Hash list initialization
	hashlist = (TRACKING_LIST **)FUNC2(sizeof(TRACKING_LIST *) * TRACKING_NUM_ARRAY);

	for (i = 0;i < TRACKING_NUM_ARRAY;i++)
	{
		hashlist[i] = NULL;
	}

	obj_id = 0;

	// Create a lock
	obj_lock = FUNC3();
	obj_id_lock = FUNC3();
	cs_lock = FUNC3();

	s = FUNC1();
	if (s == NULL)
	{
		do_not_get_callstack = true;
	}
	else
	{
		do_not_get_callstack = false;
		FUNC0(s);
	}
}