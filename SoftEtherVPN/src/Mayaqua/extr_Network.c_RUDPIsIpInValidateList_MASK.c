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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ ExpiresTick; int /*<<< orphan*/  ClientIP; } ;
struct TYPE_7__ {int /*<<< orphan*/ * NatT_SourceIpList; } ;
typedef  TYPE_1__ RUDP_STACK ;
typedef  TYPE_2__ RUDP_SOURCE_IP ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 () ; 

bool FUNC12(RUDP_STACK *r, IP *ip)
{
	UINT i;
	UINT64 now = FUNC11();
	LIST *o = NULL;
	bool ret = false;
	// Validate arguments
	if (r == NULL || ip == NULL)
	{
		return false;
	}

	// Always allow private IP addresses
	if (FUNC6(ip))
	{
		return true;
	}

	if (FUNC5(ip))
	{
		return true;
	}

	for (i = 0;i < FUNC8(r->NatT_SourceIpList);i++)
	{
		RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)FUNC7(r->NatT_SourceIpList, i);

		if (s->ExpiresTick <= now)
		{
			if (o == NULL)
			{
				o = FUNC9(NULL);
			}

			FUNC0(o, s);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC8(o);i++)
		{
			RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)FUNC7(o, i);

			FUNC3(r->NatT_SourceIpList, s);

			FUNC4(s);
		}

		FUNC10(o);
	}

	for (i = 0;i < FUNC8(r->NatT_SourceIpList);i++)
	{
		RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)FUNC7(r->NatT_SourceIpList, i);

		if (FUNC1(&s->ClientIP, ip) == 0)
		{
			ret = true;
			break;
		}
	}

	FUNC2("RUDP: NAT-T: Validate IP: %r, ret=%u (current list len = %u)\n", ip, ret, FUNC8(r->NatT_SourceIpList));

	return ret;
}