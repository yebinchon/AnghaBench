#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ CurrentSendPacketQueueSize; int /*<<< orphan*/  SendPacketQueue; int /*<<< orphan*/  ServerSession; scalar_t__ LastServerConnectionReceivedBlocksNum; int /*<<< orphan*/  Cedar; } ;
struct TYPE_6__ {TYPE_1__* PacketAdapter; } ;
struct TYPE_5__ {scalar_t__ Param; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ LINK ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(SESSION *s)
{
	LINK *k;
	// Validate arguments
	if (s == NULL || (k = (LINK *)s->PacketAdapter->Param) == NULL)
	{
		return;
	}

	FUNC0(k->Cedar, -((int)k->LastServerConnectionReceivedBlocksNum));
	k->LastServerConnectionReceivedBlocksNum = 0;

	// Stop the server session
	FUNC6(k->ServerSession);
	FUNC5(k->ServerSession);

	// Release the transmission packet queue
	FUNC3(k->SendPacketQueue);
	{
		BLOCK *block;
		while ((block = FUNC2(k->SendPacketQueue)))
		{
			FUNC1(block);
		}
	}
	FUNC7(k->SendPacketQueue);

	FUNC4(k->SendPacketQueue);

	k->CurrentSendPacketQueueSize = 0;
}