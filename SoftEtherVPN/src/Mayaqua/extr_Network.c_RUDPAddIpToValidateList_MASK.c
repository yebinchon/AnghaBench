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
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ ExpiresTick; int /*<<< orphan*/  ClientIP; } ;
struct TYPE_8__ {int /*<<< orphan*/ * NatT_SourceIpList; } ;
typedef  TYPE_1__ RUDP_STACK ;
typedef  TYPE_2__ RUDP_SOURCE_IP ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ RUDP_MAX_VALIDATED_SOURCE_IP_ADDRESSES ; 
 scalar_t__ RUDP_VALIDATED_SOURCE_IP_ADDRESS_EXPIRES ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 
 TYPE_2__* FUNC11 (int) ; 

void FUNC12(RUDP_STACK *r, IP *ip)
{
	UINT i;
	RUDP_SOURCE_IP *sip;
	UINT64 now = FUNC10();
	LIST *o = NULL;
	// Validate arguments
	if (r == NULL || ip == NULL)
	{
		return;
	}

	if (FUNC7(r->NatT_SourceIpList) >= RUDP_MAX_VALIDATED_SOURCE_IP_ADDRESSES)
	{
		return;
	}

	for (i = 0;i < FUNC7(r->NatT_SourceIpList);i++)
	{
		RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)FUNC6(r->NatT_SourceIpList, i);

		if (s->ExpiresTick <= now)
		{
			if (o == NULL)
			{
				o = FUNC8(NULL);
			}

			FUNC0(o, s);
		}
	}

	if (o != NULL)
	{
		for (i = 0;i < FUNC7(o);i++)
		{
			RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)FUNC6(o, i);

			FUNC4(r->NatT_SourceIpList, s);

			FUNC5(s);
		}

		FUNC9(o);
	}

	sip = NULL;

	for (i = 0;i < FUNC7(r->NatT_SourceIpList);i++)
	{
		RUDP_SOURCE_IP *s = (RUDP_SOURCE_IP *)FUNC6(r->NatT_SourceIpList, i);

		if (FUNC1(&s->ClientIP, ip) == 0)
		{
			sip = s;
			break;
		}
	}

	if (sip == NULL)
	{
		sip = FUNC11(sizeof(RUDP_SOURCE_IP));

		FUNC2(&sip->ClientIP, ip, sizeof(IP));

		FUNC0(r->NatT_SourceIpList, sip);
	}

	sip->ExpiresTick = now + (UINT64)RUDP_VALIDATED_SOURCE_IP_ADDRESS_EXPIRES;

	FUNC3("RUDP: NAT-T: Src IP added: %r (current list len = %u)\n", ip, FUNC7(r->NatT_SourceIpList));
}