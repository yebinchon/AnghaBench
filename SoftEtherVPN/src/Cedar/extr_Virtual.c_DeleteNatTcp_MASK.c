#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  NatTable; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
struct TYPE_11__ {int NatTcpCancelFlag; int /*<<< orphan*/  lock; int /*<<< orphan*/ * RecvFifo; int /*<<< orphan*/ * SendFifo; int /*<<< orphan*/ * TcpRecvList; int /*<<< orphan*/ * TcpRecvWindow; int /*<<< orphan*/ * Sock; int /*<<< orphan*/ * NatTcpConnectThread; int /*<<< orphan*/  Id; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  TYPE_2__ IP_PART ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC13(VH *v, NAT_ENTRY *n)
{
	// Validate arguments
	if (v == NULL || n == NULL)
	{
		return;
	}

	FUNC7(v, "LH_NAT_TCP_DELETED", n->Id);

	// Shutdown of connection thread
	if (n->NatTcpConnectThread != NULL)
	{
		n->NatTcpCancelFlag = true;

		FUNC12(n->NatTcpConnectThread, INFINITE);
		FUNC11(n->NatTcpConnectThread);
		n->NatTcpConnectThread = NULL;
	}
	if (n->Sock != NULL)
	{
		// Disconnect the socket
		FUNC3(n->Sock);
		FUNC10(n->Sock);
		n->Sock = NULL;
	}

	// Release the window memory
	if (n->TcpRecvWindow != NULL)
	{
		FUNC8(n->TcpRecvWindow);
		n->TcpRecvWindow = NULL;
	}

	// Release the window reception list
	if (n->TcpRecvList != NULL)
	{
		UINT i;
		for (i = 0;i < FUNC6(n->TcpRecvList);i++)
		{
			IP_PART *p = FUNC5(n->TcpRecvList, i);
			FUNC4(p);
		}
		FUNC9(n->TcpRecvList);
		n->TcpRecvList = NULL;
	}

	// FIFO release
	FUNC8(n->SendFifo);
	FUNC8(n->RecvFifo);

	// Delete from the NAT entry
	FUNC1(v->NatTable, n);

	FUNC2(n->lock);

	// Release the memory
	FUNC4(n);

	FUNC0("NAT_ENTRY: DeleteNatTcp\n");
}