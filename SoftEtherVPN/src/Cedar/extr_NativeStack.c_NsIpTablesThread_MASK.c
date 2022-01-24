#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  exe_name ;
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_7__ {int IpTablesInitOk; int /*<<< orphan*/  IpTablesHaltEvent; scalar_t__ IpTablesHalt; int /*<<< orphan*/  MacAddress; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ NATIVE_STACK ;
typedef  int /*<<< orphan*/  IPTABLES_STATE ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int MAX_PATH ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int NS_CHECK_IPTABLES_INTERVAL_INIT ; 
 int /*<<< orphan*/  NS_CHECK_IPTABLES_INTERVAL_MAX ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 

void FUNC11(THREAD *thread, void *param)
{
	IPTABLES_STATE *state;
	NATIVE_STACK *s;
	UINT counter = 0;
	BUF *seed_buf;
	char exe_name[MAX_PATH];
	if (thread == NULL || param == NULL)
	{
		return;
	}

	s = (NATIVE_STACK *)param;

	seed_buf = FUNC5();

	FUNC9(seed_buf, s->MacAddress, 6);

	FUNC2(exe_name, sizeof(exe_name));
	FUNC10(seed_buf, exe_name);

	state = FUNC7(seed_buf->Buf, seed_buf->Size);

	FUNC1(seed_buf);

	if (state == NULL)
	{
		FUNC6(thread);
		return;
	}

	s->IpTablesInitOk = true;
	FUNC6(thread);

	while (true)
	{
		UINT wait_interval;

		if (s->IpTablesHalt)
		{
			break;
		}

		if (FUNC4(state))
		{
			counter = 0;
		}

		counter++;
		wait_interval = NS_CHECK_IPTABLES_INTERVAL_INIT * counter;
		wait_interval = FUNC3(wait_interval, NS_CHECK_IPTABLES_INTERVAL_MAX);

		//Debug("NsIpTablesThread: wait for %u\n", wait_interval);
		FUNC8(s->IpTablesHaltEvent, wait_interval);
	}

	FUNC0(state);
}