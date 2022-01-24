#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  NatTable; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int DisconnectNow; scalar_t__ SrcIp; scalar_t__ Protocol; scalar_t__ TcpStatus; } ;
typedef  TYPE_2__ NAT_ENTRY ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NAT_TCP ; 
 scalar_t__ NAT_TCP_CONNECTING ; 

UINT FUNC2(VH *v, UINT ip, UINT protocol, bool tcp_syn_sent)
{
	UINT ret = 0;
	UINT i;
	// Validate arguments
	if (v == NULL)
	{
		return 0;
	}

	for (i = 0;i < FUNC1(v->NatTable);i++)
	{
		NAT_ENTRY *e = FUNC0(v->NatTable, i);

		if (e->DisconnectNow == false)
		{
			if (e->SrcIp == ip)
			{
				if (e->Protocol == protocol)
				{
					bool ok = false;

					if (protocol == NAT_TCP)
					{
						if (tcp_syn_sent)
						{
							if (e->TcpStatus == NAT_TCP_CONNECTING)
							{
								ok = true;
							}
						}
						else
						{
							if (e->TcpStatus != NAT_TCP_CONNECTING)
							{
								ok = true;
							}
						}
					}
					else
					{
						ok = true;
					}

					if (ok)
					{
						ret++;
					}
				}
			}
		}
	}

	return ret;
}