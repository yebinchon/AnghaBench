#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmdline ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  DummyMark; int /*<<< orphan*/  DummyDestIP; int /*<<< orphan*/  DummySrcIp; int /*<<< orphan*/  Chain; int /*<<< orphan*/  ConditionAndArgs; } ;
struct TYPE_8__ {int /*<<< orphan*/  EntryList; int /*<<< orphan*/  SeedHash; } ;
typedef  TYPE_1__ IPTABLES_STATE ;
typedef  TYPE_2__ IPTABLES_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  NN_RAW_IP_PORT_END ; 
 int /*<<< orphan*/  NN_RAW_IP_PORT_START ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

IPTABLES_STATE *FUNC14(void *seed, UINT seed_size)
{
	IPTABLES_STATE *ret = NULL;
	bool ok = false;

	if (FUNC6())
	{
		IPTABLES_ENTRY *e;
		UINT i;

		ret = FUNC12(sizeof(IPTABLES_STATE));

		ret->EntryList = FUNC9(NULL);

		FUNC10(ret->SeedHash, seed, seed_size);

		// Create a pair of entry
		e = FUNC12(sizeof(IPTABLES_ENTRY));
		FUNC4(ret->SeedHash, e, 0);
		FUNC11(e->Chain, sizeof(e->Chain), "OUTPUT");
		FUNC3(e->ConditionAndArgs, sizeof(e->ConditionAndArgs),
			"-p tcp --tcp-flags RST RST --sport %u:%u ! -s %r/32 ! -d %r/32 -m connmark ! --mark 0x%x -j DROP",
			NN_RAW_IP_PORT_START, NN_RAW_IP_PORT_END,
			&e->DummySrcIp, &e->DummyDestIP, e->DummyMark);
		FUNC0(ret->EntryList, e);

		e = FUNC12(sizeof(IPTABLES_ENTRY));
		FUNC4(ret->SeedHash, e, 1);
		FUNC11(e->Chain, sizeof(e->Chain), "OUTPUT");
		FUNC3(e->ConditionAndArgs, sizeof(e->ConditionAndArgs),
			"-p icmp --icmp-type 3/3 ! -s %r/32 ! -d %r/32 -m connmark ! --mark 0x%x -j DROP",
			e->DummySrcIp, e->DummyDestIP, e->DummyMark);
		FUNC0(ret->EntryList, e);

		ok = true;

		// Insert entries if not exists
		for (i = 0; i < FUNC8(ret->EntryList);i++)
		{
			UINT j;
			IPTABLES_ENTRY *e = FUNC7(ret->EntryList, i);

			for (j = 0;j < 100;j++)
			{
				if (FUNC5(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) != 0)
				{
					char cmdline[MAX_PATH];

					FUNC3(cmdline, sizeof(cmdline),
						"iptables -D %s %s",
						e->Chain, e->ConditionAndArgs);

					FUNC13(cmdline);
				}
				else
				{
					break;
				}
			}

			if (FUNC5(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) == 0)
			{
				char cmdline[MAX_PATH];

				FUNC3(cmdline, sizeof(cmdline),
					"iptables -I %s %s",
					e->Chain, e->ConditionAndArgs);

				FUNC13(cmdline);

				if (FUNC5(e->Chain, &e->DummySrcIp, &e->DummyDestIP, e->DummyMark) == 0)
				{
					FUNC1("Run \"%s\" failed.\n", cmdline);
					ok = false;
					break;
				}
				else
				{
					FUNC1("Run \"%s\" ok.\n", cmdline);
				}
			}
		}
	}

	if (ok == false)
	{
		FUNC2(ret);
		ret = NULL;
	}

	return ret;
}