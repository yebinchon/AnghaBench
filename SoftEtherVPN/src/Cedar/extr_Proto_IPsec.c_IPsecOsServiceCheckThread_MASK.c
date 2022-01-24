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
typedef  int UINT ;
struct TYPE_3__ {int HostIPAddressListChanged; int OsServiceStoped; int Halt; int /*<<< orphan*/  OsServiceCheckThreadEvent; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ IPSEC_SERVER ;

/* Variables and functions */
 int IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL ; 
 int /*<<< orphan*/  IPSEC_CHECK_OS_SERVICE_INTERVAL_MAX ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(THREAD *t, void *p)
{
	UINT interval = IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL;
	IPSEC_SERVER *s = (IPSEC_SERVER *)p;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	s->HostIPAddressListChanged = true;
	s->OsServiceStoped = false;

	while (s->Halt == false)
	{
		if (FUNC0(s))
		{
			interval = IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL;
		}

		if (FUNC2(s->OsServiceCheckThreadEvent, interval) == false)
		{
			interval = FUNC1(interval * 2, IPSEC_CHECK_OS_SERVICE_INTERVAL_MAX);
		}
		else
		{
			interval = IPSEC_CHECK_OS_SERVICE_INTERVAL_INITIAL;
		}
	}

	FUNC0(s);
}