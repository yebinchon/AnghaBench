#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmdline ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  ConditionAndArgs; int /*<<< orphan*/  Chain; int /*<<< orphan*/  DummyMark; int /*<<< orphan*/  DummyDestIP; int /*<<< orphan*/  DummySrcIp; } ;
struct TYPE_6__ {int /*<<< orphan*/  EntryList; } ;
typedef  TYPE_1__ IPTABLES_STATE ;
typedef  TYPE_2__ IPTABLES_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(IPTABLES_STATE *s)
{
	UINT i;
	if (s == NULL)
	{
		return;
	}

	// Delete entries
	for (i = 0; i < FUNC4(s->EntryList);i++)
	{
		IPTABLES_ENTRY *e = FUNC3(s->EntryList, i);
		UINT j;

		for (j = 0;j < 100;j++)
		{
			if (FUNC2(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) != 0)
			{
				char cmdline[MAX_PATH];

				FUNC0(cmdline, sizeof(cmdline),
					"iptables -D %s %s",
					e->Chain, e->ConditionAndArgs);

				FUNC5(cmdline);
			}
			else
			{
				break;
			}
		}
	}

	FUNC1(s);
}