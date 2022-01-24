#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_3__ {int Halt; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cn_listener ; 
 int /*<<< orphan*/  cn_listener_lock ; 
 scalar_t__ cn_next_allow ; 

void FUNC6(SOCK *s, PACK *p)
{
	UINT pid = 0;
	UINT current_pid = 0;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	pid = FUNC2(p, "pid");

#ifdef	OS_WIN32
	current_pid = MsGetProcessId();
#endif	// OS_WIN32

	if (current_pid == pid)
	{
		return;
	}

	FUNC0(cn_listener_lock);
	{
		if (cn_listener != NULL)
		{
			if (cn_listener->Halt == false)
			{
				FUNC3(cn_listener);

				cn_next_allow = FUNC4() + (6 * 1000);
			}
		}
	}
	FUNC5(cn_listener_lock);
}