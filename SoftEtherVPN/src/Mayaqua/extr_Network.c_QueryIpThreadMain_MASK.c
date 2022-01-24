#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int Halt; int /*<<< orphan*/  HaltEvent; int /*<<< orphan*/  IntervalLastOk; int /*<<< orphan*/  IntervalLastNg; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Hostname; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ QUERYIPTHREAD ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(THREAD *thread, void *param)
{
	QUERYIPTHREAD *t = (QUERYIPTHREAD *)param;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	while (t->Halt == false)
	{
		UINT next_wait_time = 0;
		IP ip;
		bool ok = false;

		if (FUNC1(&ip, t->Hostname, 5000, &t->Halt))
		{
			if (FUNC2(&ip) == false)
			{
				FUNC3(t->Lock);
				{
					FUNC0(&t->Ip, &ip, sizeof(IP));
				}
				FUNC4(t->Lock);

				ok = true;
			}
		}

		if (ok == false)
		{
			next_wait_time = t->IntervalLastNg;
		}
		else
		{
			next_wait_time = t->IntervalLastOk;
		}

		if (t->Halt)
		{
			break;
		}

		FUNC5(t->HaltEvent, next_wait_time);
	}
}