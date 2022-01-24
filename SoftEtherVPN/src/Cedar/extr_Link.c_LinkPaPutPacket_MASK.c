#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT ;
struct TYPE_14__ {int /*<<< orphan*/  ReceivedBlocks; } ;
struct TYPE_13__ {int Flag1; int LockFlag; TYPE_3__* Hub; int /*<<< orphan*/  Cedar; void* LastServerConnectionReceivedBlocksNum; TYPE_4__* ServerSession; scalar_t__* StopAllLinkFlag; scalar_t__ Halting; } ;
struct TYPE_12__ {int /*<<< orphan*/  Cancel1; TYPE_6__* Connection; TYPE_1__* PacketAdapter; } ;
struct TYPE_11__ {TYPE_2__* Option; } ;
struct TYPE_10__ {scalar_t__ YieldAfterStorePacket; } ;
struct TYPE_9__ {scalar_t__ Param; } ;
typedef  TYPE_4__ SESSION ;
typedef  TYPE_5__ LINK ;
typedef  TYPE_6__ CONNECTION ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

bool FUNC10(SESSION *s, void *data, UINT size)
{
	LINK *k;
	BLOCK *block = NULL;
	SESSION *server_session;
	CONNECTION *server_connection;
	bool ret = true;
	bool halting = false;
	// Validate arguments
	if (s == NULL || (k = (LINK *)s->PacketAdapter->Param) == NULL)
	{
		return false;
	}

	halting = (k->Halting || (*k->StopAllLinkFlag));

	server_session = k->ServerSession;
	server_connection = server_session->Connection;

	k->Flag1++;
	if ((k->Flag1 % 32) == 0)
	{
		// Omit for performance
		UINT current_num;
		int diff;

		current_num = FUNC4(server_connection->ReceivedBlocks);

		diff = (int)current_num - (int)k->LastServerConnectionReceivedBlocksNum;

		k->LastServerConnectionReceivedBlocksNum = current_num;

		FUNC1(k->Cedar, diff);
	}

	// Since the packet arrives from the HUB of the link destination,
	// deliver it to the ReceivedBlocks of the server session
	if (data != NULL)
	{
		if (halting == false)
		{
			block = FUNC7(data, size, 0);
		}

		if (k->LockFlag == false)
		{
			UINT current_num;
			int diff;

			k->LockFlag = true;
			FUNC6(server_connection->ReceivedBlocks);

			current_num = FUNC4(server_connection->ReceivedBlocks);

			diff = (int)current_num - (int)k->LastServerConnectionReceivedBlocksNum;

			k->LastServerConnectionReceivedBlocksNum = current_num;

			FUNC1(k->Cedar, diff);
		}

		if (halting == false)
		{
			if (FUNC2(k->Cedar) == 0)
			{
				FUNC3(block);
			}
			else
			{
				FUNC5(server_connection, block, true);
			}
		}
	}
	else
	{
		UINT current_num;
		int diff;

		current_num = FUNC4(server_connection->ReceivedBlocks);

		diff = (int)current_num - (int)k->LastServerConnectionReceivedBlocksNum;

		k->LastServerConnectionReceivedBlocksNum = current_num;

		FUNC1(k->Cedar, diff);

		if (k->LockFlag)
		{
			k->LockFlag = false;
			FUNC8(server_connection->ReceivedBlocks);
		}

		// Issue the Cancel, since finished store all packets when the data == NULL
		FUNC0(server_session->Cancel1);

		if (k->Hub != NULL && k->Hub->Option != NULL && k->Hub->Option->YieldAfterStorePacket)
		{
			FUNC9();
		}
	}

	if (halting)
	{
		ret = false;
	}

	return ret;
}