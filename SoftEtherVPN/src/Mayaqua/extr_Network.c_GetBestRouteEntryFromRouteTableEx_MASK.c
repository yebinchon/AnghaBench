#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  size_t UINT ;
struct TYPE_14__ {int* addr; } ;
struct TYPE_13__ {size_t InterfaceID; size_t Metric; scalar_t__ InnerScore; size_t OldIfMetric; int PPPConnection; TYPE_3__ DestMask; TYPE_3__ GatewayIP; TYPE_3__ DestIP; int /*<<< orphan*/  LocalRouting; } ;
struct TYPE_12__ {size_t NumEntry; TYPE_2__** Entry; } ;
typedef  TYPE_1__ ROUTE_TABLE ;
typedef  TYPE_2__ ROUTE_ENTRY ;
typedef  TYPE_3__ IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 size_t FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int FUNC3 () ; 
 TYPE_2__* FUNC4 (int) ; 

ROUTE_ENTRY *FUNC5(ROUTE_TABLE *table, IP *ip, UINT exclude_if_id)
{
	UINT i;
	ROUTE_ENTRY *ret = NULL;
	ROUTE_ENTRY *tmp = NULL;
	UINT64 min_score = 0;
	// Validate arguments
	if (ip == NULL || table == NULL)
	{
		return NULL;
	}

	if (FUNC2(ip))
	{
		// IPv6 is not supported
		return NULL;
	}

	// Select routing table entry by following rule
	// 1. Largest subnet mask
	// 2. Smallest metric value 
	for (i = 0;i < table->NumEntry;i++)
	{
		ROUTE_ENTRY *e = table->Entry[i];
		UINT dest, net, mask;

		dest = FUNC1(ip);
		net = FUNC1(&e->DestIP);
		mask = FUNC1(&e->DestMask);

		if (exclude_if_id != 0)
		{
			if (e->InterfaceID == exclude_if_id)
			{
				continue;
			}
		}

		// Mask test
		if ((dest & mask) == (net & mask))
		{
			// Calculate the score
			UINT score_high32 = mask;
			UINT score_low32 = 0xFFFFFFFF - e->Metric;
			UINT64 score64 = (UINT64)score_high32 * (UINT64)0x80000000 * (UINT64)2 + (UINT64)score_low32;
			if (score64 == 0)
			{
				score64 = 1;
			}

			e->InnerScore = score64;
		}
	}

	tmp = NULL;

	// Search for the item with maximum score
	for (i = 0;i < table->NumEntry;i++)
	{
		ROUTE_ENTRY *e = table->Entry[i];

		if (e->InnerScore != 0)
		{
			if (e->InnerScore >= min_score)
			{
				tmp = e;
				min_score = e->InnerScore;
			}
		}
	}

	if (tmp != NULL)
	{
		UINT dest, gateway, mask;

		// Generate an entry
		ret = FUNC4(sizeof(ROUTE_ENTRY));

		FUNC0(&ret->DestIP, ip, sizeof(IP));
		ret->DestMask.addr[0] = 255;
		ret->DestMask.addr[1] = 255;
		ret->DestMask.addr[2] = 255;
		ret->DestMask.addr[3] = 255;
		FUNC0(&ret->GatewayIP, &tmp->GatewayIP, sizeof(IP));
		ret->InterfaceID = tmp->InterfaceID;
		ret->LocalRouting = tmp->LocalRouting;
		ret->OldIfMetric = tmp->Metric;
		ret->Metric = 1;
		ret->PPPConnection = tmp->PPPConnection;

		// Calculation related to routing control
		dest = FUNC1(&tmp->DestIP);
		gateway = FUNC1(&tmp->GatewayIP);
		mask = FUNC1(&tmp->DestMask);
		if ((dest & mask) == (gateway & mask))
		{
#ifdef	OS_WIN32
			if (MsIsVista() == false)
			{
				// Adjust for Windows
				ret->PPPConnection = true;
			}
#endif	// OS_WIN32
		}
	}

	return ret;
}