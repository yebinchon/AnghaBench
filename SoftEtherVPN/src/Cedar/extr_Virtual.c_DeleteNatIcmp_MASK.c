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
struct TYPE_7__ {int /*<<< orphan*/  NatTable; } ;
typedef  TYPE_1__ VH ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * Sock; struct TYPE_8__* IcmpOriginalCopy; int /*<<< orphan*/ * IcmpResponseBlock; int /*<<< orphan*/ * IcmpQueryBlock; int /*<<< orphan*/  UdpSendQueue; int /*<<< orphan*/  UdpRecvQueue; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(VH *v, NAT_ENTRY *n)
{
	BLOCK *block;
	// Validate arguments
	if (v == NULL || n == NULL)
	{
		return;
	}

	//NLog(v, "LH_NAT_ICMP_DELETED", n->Id);

	// Release all queues
	while ((block = FUNC6(n->UdpRecvQueue)))
	{
		FUNC5(block);
	}
	FUNC7(n->UdpRecvQueue);
	while ((block = FUNC6(n->UdpSendQueue)))
	{
		FUNC5(block);
	}
	FUNC7(n->UdpSendQueue);

	if (n->IcmpQueryBlock != NULL)
	{
		FUNC5(n->IcmpQueryBlock);
	}

	if (n->IcmpResponseBlock != NULL)
	{
		FUNC5(n->IcmpResponseBlock);
	}

	if (n->IcmpOriginalCopy != NULL)
	{
		FUNC4(n->IcmpOriginalCopy);
	}

	// Release the socket
	if (n->Sock != NULL)
	{
		FUNC3(n->Sock);
		FUNC8(n->Sock);
		n->Sock = NULL;
	}

	FUNC2(n->lock);

	// Remove from the table
	FUNC1(v->NatTable, n);

	// Release the memory
	FUNC4(n);

	FUNC0("NAT: DeleteNatIcmp\n");

}