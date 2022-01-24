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
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  IpParts; struct TYPE_9__* HeadIpHeaderData; struct TYPE_9__* Data; scalar_t__ DataReserved; } ;
struct TYPE_8__ {int /*<<< orphan*/  CurrentIpQuota; } ;
typedef  TYPE_1__ NATIVE_NAT ;
typedef  TYPE_2__ IP_PART ;
typedef  TYPE_2__ IP_COMBINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(NATIVE_NAT *t, IP_COMBINE *c)
{
	UINT i;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	// Release the data
	t->CurrentIpQuota -= c->DataReserved;
	FUNC0(c->Data);

	// Release the partial list
	for (i = 0;i < FUNC2(c->IpParts);i++)
	{
		IP_PART *p = FUNC1(c->IpParts, i);

		FUNC0(p);
	}

	FUNC0(c->HeadIpHeaderData);

	FUNC3(c->IpParts);
	FUNC0(c);
}