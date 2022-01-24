#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int Unlocked; int /*<<< orphan*/  Timeout; int /*<<< orphan*/ * Lock; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  LOCK ;
typedef  TYPE_1__ DEADCHECK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CheckDeadLockThread ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void FUNC7(LOCK *lock, UINT timeout, char *name)
{
	DEADCHECK c;
	THREAD *t;
	char msg[MAX_PATH];

	if (lock == NULL)
	{
		return;
	}
	if (name == NULL)
	{
		name = "Unknown";
	}

	FUNC1(msg, sizeof(msg), "error: CheckDeadLock() Failed: %s\n", name);

	FUNC6(&c, sizeof(c));
	c.Lock = lock;
	c.Timeout = timeout;
	c.Unlocked = false;

	t = FUNC2(CheckDeadLockThread, &c);
	FUNC5(t);
	if (FUNC4(t, timeout) == false)
	{
		if (c.Unlocked == false)
		{
			// Deadlock occured
			FUNC0(msg);
		}
		else
		{
			FUNC4(t, INFINITE);
		}
	}

	FUNC3(t);
}