#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  BulkRecvKey; int /*<<< orphan*/  BulkSendKey; int /*<<< orphan*/  SendFifo; int /*<<< orphan*/  RecvFifo; int /*<<< orphan*/  ReplyAckList; int /*<<< orphan*/ * TcpSock; int /*<<< orphan*/  RecvSegmentList; int /*<<< orphan*/  SendSegmentList; } ;
typedef  TYPE_1__ RUDP_SESSION ;
typedef  TYPE_1__ RUDP_SEGMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(RUDP_SESSION *se)
{
	UINT i;
	// Validate arguments
	if (se == NULL)
	{
		return;
	}

	FUNC0("RUDPFreeSession %X\n", se);

	for (i = 0;i < FUNC4(se->SendSegmentList);i++)
	{
		RUDP_SEGMENT *s = FUNC3(se->SendSegmentList, i);

		FUNC2(s);
	}

	FUNC7(se->SendSegmentList);

	for (i = 0;i < FUNC4(se->RecvSegmentList);i++)
	{
		RUDP_SEGMENT *s = FUNC3(se->RecvSegmentList, i);

		FUNC2(s);
	}

	FUNC7(se->RecvSegmentList);

	if (se->TcpSock != NULL)
	{
		FUNC1(se->TcpSock);
		FUNC9(se->TcpSock);
	}

	FUNC6(se->ReplyAckList);

	FUNC5(se->RecvFifo);
	FUNC5(se->SendFifo);

	FUNC8(se->BulkSendKey);
	FUNC8(se->BulkRecvKey);

	FUNC2(se);
}