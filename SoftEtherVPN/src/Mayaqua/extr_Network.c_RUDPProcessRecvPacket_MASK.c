#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keygen ;
typedef  int /*<<< orphan*/  key ;
typedef  int UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_16__ {int* Key_Recv; int YourTick; int LatestRecvMyTick; int LatestRecvMyTick2; int CurrentRtt; int Magic_Disconnect; int LastRecvTick; scalar_t__ Status; } ;
struct TYPE_15__ {scalar_t__ Protocol; int Now; int ServerMode; int /*<<< orphan*/  SvcNameHash; } ;
typedef  TYPE_1__ RUDP_STACK ;
typedef  TYPE_2__ RUDP_SESSION ;
typedef  int /*<<< orphan*/  CRYPT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int*,int) ; 
 int FUNC7 (int*) ; 
 int FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,int,int*,int) ; 
 int RUDP_MAX_NUM_ACK ; 
 int RUDP_MAX_SEGMENT_SIZE ; 
 scalar_t__ RUDP_PROTOCOL_DNS ; 
 scalar_t__ RUDP_PROTOCOL_ICMP ; 
 scalar_t__ RUDP_SESSION_STATUS_CONNECT_SENT ; 
 scalar_t__ RUDP_SESSION_STATUS_ESTABLISHED ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int*,int*,int /*<<< orphan*/ ,int) ; 

bool FUNC16(RUDP_STACK *r, RUDP_SESSION *se, void *recv_data, UINT recv_size)
{
	UCHAR sign[SHA1_SIZE];
	UCHAR sign2[SHA1_SIZE];
	UCHAR *p;
	UCHAR *iv;
	UINT size;
	UCHAR keygen[SHA1_SIZE * 2];
	UCHAR key[SHA1_SIZE];
	CRYPT *c;
	UCHAR padlen;
	UINT num_ack;
	UINT i;
	UINT64 seq_no;
	UCHAR *payload;
	UINT payload_size;
	UINT64 max_ack;
	UINT64 my_tick, your_tick;
	// Validate arguments
	if (r == NULL || se == NULL || recv_data == NULL || recv_size == 0)
	{
		return false;
	}

	p = (UCHAR *)recv_data;
	size = recv_size;
	if (size < SHA1_SIZE)
	{
		return false;
	}

	// Validate the signature
	FUNC1(sign, p, SHA1_SIZE);
	FUNC1(p, se->Key_Recv, SHA1_SIZE);
	FUNC14(sign2, p, recv_size);
	FUNC1(p, sign, SHA1_SIZE);

	if (r->Protocol == RUDP_PROTOCOL_DNS || r->Protocol == RUDP_PROTOCOL_ICMP)
	{
		FUNC15(sign2, sign2, r->SvcNameHash, SHA1_SIZE);
	}

	if (FUNC0(sign, sign2, SHA1_SIZE) != 0)
	{
		//WHERE;
		return false;
	}
	p += SHA1_SIZE;
	size -= SHA1_SIZE;

	// IV
	if (size < SHA1_SIZE)
	{
		return false;
	}
	iv = p;
	p += SHA1_SIZE;
	size -= SHA1_SIZE;

	// Decrypt
	if (size < 1)
	{
		return false;
	}
	FUNC1(keygen + 0, iv, SHA1_SIZE);
	FUNC1(keygen + SHA1_SIZE, se->Key_Recv, SHA1_SIZE);
	FUNC14(key, keygen, sizeof(keygen));

	c = FUNC6(key, sizeof(key));
	FUNC3(c, p, p, size);
	FUNC4(c);

	// padlen
	padlen = p[size - 1];
	if (padlen == 0)
	{
		return false;
	}
	if (size < padlen)
	{
		return false;
	}
	size -= padlen;

	// MyTick
	if (size < sizeof(UINT64))
	{
		return false;
	}
	my_tick = FUNC8(p);
	p += sizeof(UINT64);
	size -= sizeof(UINT64);

	// YourTick
	if (size < sizeof(UINT64))
	{
		return false;
	}
	your_tick = FUNC8(p);
	p += sizeof(UINT64);
	size -= sizeof(UINT64);

	if (your_tick > r->Now)
	{
		return false;
	}

	// MAX_ACK
	if (size < sizeof(UINT64))
	{
		return false;
	}
	max_ack = FUNC8(p);
	p += sizeof(UINT64);
	size -= sizeof(UINT64);

	// num_ack
	if (size < sizeof(UINT))
	{
		return false;
	}

	num_ack = FUNC7(p);
	if (num_ack > RUDP_MAX_NUM_ACK)
	{
		return false;
	}
	p += sizeof(UINT);
	size -= sizeof(UINT);

	// ACKs
	if (size < (sizeof(UINT64) * num_ack + sizeof(UINT64)))
	{
		return false;
	}

	if (max_ack >= 1)
	{
		FUNC12(r, se, max_ack);
	}

	for (i = 0;i < num_ack;i++)
	{
		UINT64 seq = FUNC8(p);

		FUNC11(r, se, seq);

		p += sizeof(UINT64);
		size -= sizeof(UINT64);
	}

	// Processing of the Tick (Calculation of RTT)
	if (my_tick >= 2)
	{
		my_tick--;
	}
	se->YourTick = FUNC5(se->YourTick, my_tick);

	se->LatestRecvMyTick = FUNC5(se->LatestRecvMyTick, your_tick);

	if (se->LatestRecvMyTick2 != se->LatestRecvMyTick)
	{
		se->LatestRecvMyTick2 = se->LatestRecvMyTick;
		se->CurrentRtt = (UINT)(r->Now - se->LatestRecvMyTick);

#ifdef	RUDP_DETAIL_LOG
		Debug("CurrentRTT = %u\n", se->CurrentRtt);
#endif	// RUDP_DETAIL_LOG
	}

	// SEQ NO
	seq_no = FUNC8(p);
	p += sizeof(UINT64);
	size -= sizeof(UINT64);

	if (seq_no == 0)
	{
		// Sequence number of 0 is a invalid packet
		return true;
	}

	if (seq_no == se->Magic_Disconnect)
	{
		// Disconnected from opponent
		FUNC9(r, se, true);
		return true;
	}

	// Update the last reception date and time
	se->LastRecvTick = r->Now;

	payload = p;
	payload_size = size;

#ifdef	RUDP_DETAIL_LOG
	Debug("RUDP %X Segment Recv: %I64u (num_ack=%u, size=%u)\n", se, seq_no, num_ack, size);
#endif	// RUDP_DETAIL_LOG

	if (payload_size >= 1 && payload_size <= RUDP_MAX_SEGMENT_SIZE)
	{
		// Received one or more bytes of data

#ifdef	RUDP_DETAIL_LOG
		Debug("Recv Size: %X %I64u %u %u\n", se, seq_no, payload_size, recv_size);
#endif	// RUDP_DETAIL_LOG

		FUNC13(r, se, seq_no, payload, payload_size);
	}

	if (r->ServerMode == false)
	{
		if (se->Status == RUDP_SESSION_STATUS_CONNECT_SENT)
		{
			// Shift to the established state if the connection is not yet in established state
			se->Status = RUDP_SESSION_STATUS_ESTABLISHED;

			FUNC10(r, se);
		}
	}

	return true;
}