#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dummy_buf ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_24__ {int Size; scalar_t__ SizeofData; int /*<<< orphan*/ * Buf; } ;
struct TYPE_23__ {scalar_t__ Size; scalar_t__ Buf; } ;
struct TYPE_22__ {TYPE_2__* Udp; TYPE_1__* Session; TYPE_14__* SendBlocks; int /*<<< orphan*/ * RecvBuf; } ;
struct TYPE_21__ {int IgnoreSendErr; } ;
struct TYPE_20__ {scalar_t__ NextKeepAliveTime; int /*<<< orphan*/  port; int /*<<< orphan*/  ip; int /*<<< orphan*/  Seq; } ;
struct TYPE_19__ {int /*<<< orphan*/  SessionKey32; int /*<<< orphan*/  TotalSendSizeReal; int /*<<< orphan*/  TotalSendSize; } ;
struct TYPE_18__ {scalar_t__ num_item; } ;
typedef  TYPE_3__ SOCK ;
typedef  TYPE_4__ CONNECTION ;
typedef  TYPE_5__ BUF ;
typedef  TYPE_6__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 TYPE_6__* FUNC7 (TYPE_14__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC9 () ; 
 int /*<<< orphan*/  RECV_BUF_SIZE ; 
 int /*<<< orphan*/  SE_UDP_SIGN ; 
 scalar_t__ SOCK_LATER ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ UDP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int) ; 

void FUNC14(SOCK *s, CONNECTION *c)
{
	UCHAR *buf;
	BUF *b;
	UINT64 dummy_64 = 0;
	UCHAR dummy_buf[16];
	UINT64 now = FUNC11();
	UINT ret;
	bool force_flag = false;
	bool packet_sent = false;
	// Validate arguments
	if (s == NULL || c == NULL)
	{
		return;
	}

	// Allocate the temporary buffer in heap
	if (c->RecvBuf == NULL)
	{
		c->RecvBuf = FUNC8(RECV_BUF_SIZE);
	}
	buf = c->RecvBuf;

	if (c->Udp->NextKeepAliveTime == 0 || c->Udp->NextKeepAliveTime <= now)
	{
		force_flag = true;
	}

	// Creating a buffer
	while ((c->SendBlocks->num_item > 0) || force_flag)
	{
		UINT *key32;
		UINT64 *seq;
		char *sign;

		force_flag = false;

		// Assemble a buffer from the current queue
		b = FUNC9();

		// Keep an area for packet header (16 bytes)
		FUNC12(b, dummy_buf, sizeof(dummy_buf));

		// Pack the packets in transmission queue
		while (true)
		{
			BLOCK *block;

			if (b->Size > UDP_BUF_SIZE)
			{
				break;
			}
			block = FUNC7(c->SendBlocks);
			if (block == NULL)
			{
				break;
			}

			if (block->Size != 0)
			{
				FUNC13(b, block->Size);
				FUNC12(b, block->Buf, block->Size);

				c->Session->TotalSendSize += (UINT64)block->SizeofData;
				c->Session->TotalSendSizeReal += (UINT64)block->Size;
			}

			FUNC4(block);
			break;
		}

		// Write sequence number and session key
		sign = (char *)(((UCHAR *)b->Buf));
		key32 = (UINT *)(((UCHAR *)b->Buf + 4));
		seq = (UINT64 *)(((UCHAR *)b->Buf + 8));
		FUNC0(sign, SE_UDP_SIGN, 4);
		*key32 = FUNC2(c->Session->SessionKey32);
		*seq = FUNC3(c->Udp->Seq++); // Increment the sequence number

//		InsertQueue(c->Udp->BufferQueue, b);

		packet_sent = true;
/*	}

	// Send a buffer
	while (c->Udp->BufferQueue->num_item != 0)
	{
		FIFO *f = c->Udp->BufferQueue->fifo;
		BUF **pb = (BUF**)(((UCHAR *)f->p) + f->pos);
		BUF *b = *pb;

*/		ret = FUNC10(s, &c->Udp->ip, c->Udp->port, b->Buf, b->Size);
		if (ret == SOCK_LATER)
		{
			// Blocking
			FUNC1(".");
//			break;
		}
		if (ret != b->Size)
		{
			if (s->IgnoreSendErr == false)
			{
				// Error
				FUNC1("******* SendTo Error !!!\n");
			}
		}

		// Memory release
		FUNC5(b);
//		GetNext(c->Udp->BufferQueue);
	}

	if (packet_sent)
	{
		// KeepAlive time update
		c->Udp->NextKeepAliveTime = now + (UINT64)FUNC6(c);
	}
}