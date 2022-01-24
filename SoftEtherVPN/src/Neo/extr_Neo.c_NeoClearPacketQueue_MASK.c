#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  PacketQueueLock; scalar_t__ NumPacketQueue; int /*<<< orphan*/ * Tail; TYPE_1__* PacketQueue; } ;
struct TYPE_4__ {struct TYPE_4__* Buf; struct TYPE_4__* Next; } ;
typedef  TYPE_1__ NEO_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ctx ; 

void FUNC3()
{
	// Release the memory of the packet queue
	FUNC1(ctx->PacketQueueLock);
	{
		NEO_QUEUE *q = ctx->PacketQueue;
		NEO_QUEUE *qn;
		while (q != NULL)
		{
			qn = q->Next;
			FUNC0(q->Buf);
			FUNC0(q);
			q = qn;
		}
		ctx->PacketQueue = NULL;
		ctx->Tail = NULL;
		ctx->NumPacketQueue = 0;
	}
	FUNC2(ctx->PacketQueueLock);
}