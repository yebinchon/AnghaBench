#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/ * SendQueue; int /*<<< orphan*/ * IpWaitList; int /*<<< orphan*/ * IpPacketQueue; int /*<<< orphan*/ * ArpWaitTable; int /*<<< orphan*/ * ArpTable; } ;
struct TYPE_11__ {TYPE_1__* Packet; } ;
struct TYPE_10__ {TYPE_2__* PacketData; } ;
typedef  TYPE_1__ PKT ;
typedef  TYPE_2__ L3PACKET ;
typedef  TYPE_3__ L3IF ;
typedef  TYPE_2__ L3ARPWAIT ;
typedef  TYPE_2__ L3ARPENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(L3IF *f)
{
	UINT i;
	L3PACKET *p;
	PKT *pkt;
	// Validate arguments
	if (f == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC4(f->ArpTable);i++)
	{
		L3ARPENTRY *a = FUNC3(f->ArpTable, i);
		FUNC0(a);
	}
	FUNC5(f->ArpTable);
	f->ArpTable = NULL;

	for (i = 0;i < FUNC4(f->ArpWaitTable);i++)
	{
		L3ARPWAIT *w = FUNC3(f->ArpWaitTable, i);
		FUNC0(w);
	}
	FUNC5(f->ArpWaitTable);
	f->ArpWaitTable = NULL;

	while ((p = FUNC2(f->IpPacketQueue)))
	{
		FUNC0(p->Packet->PacketData);
		FUNC1(p->Packet);
		FUNC0(p);
	}
	FUNC6(f->IpPacketQueue);
	f->IpPacketQueue = NULL;

	for (i = 0;i < FUNC4(f->IpWaitList);i++)
	{
		L3PACKET *p = FUNC3(f->IpWaitList, i);
		FUNC0(p->Packet->PacketData);
		FUNC1(p->Packet);
		FUNC0(p);
	}
	FUNC5(f->IpWaitList);
	f->IpWaitList = NULL;

	while ((pkt = FUNC2(f->SendQueue)))
	{
		FUNC0(pkt->PacketData);
		FUNC1(pkt);
	}
	FUNC6(f->SendQueue);
	f->SendQueue = NULL;
}