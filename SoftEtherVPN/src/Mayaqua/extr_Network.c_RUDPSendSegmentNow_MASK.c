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
typedef  int /*<<< orphan*/  keygen ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  dst ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_8__ {scalar_t__* Key_Send; scalar_t__* NextIv; scalar_t__ Icmp_Type; scalar_t__ Dns_TranId; int /*<<< orphan*/  LastSentTick; int /*<<< orphan*/  YourPort; int /*<<< orphan*/  YourIp; int /*<<< orphan*/ * ReplyAckList; int /*<<< orphan*/  LastRecvCompleteSeqNo; int /*<<< orphan*/  YourTick; } ;
struct TYPE_7__ {scalar_t__ Protocol; int /*<<< orphan*/  Now; int /*<<< orphan*/  SvcNameHash; } ;
typedef  TYPE_1__ RUDP_STACK ;
typedef  TYPE_2__ RUDP_SESSION ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CRYPT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RUDP_MAX_NUM_ACK ; 
 int RUDP_MAX_PACKET_SIZE ; 
 scalar_t__ RUDP_MAX_SEGMENT_SIZE ; 
 scalar_t__ RUDP_PROTOCOL_DNS ; 
 scalar_t__ RUDP_PROTOCOL_ICMP ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int) ; 

void FUNC22(RUDP_STACK *r, RUDP_SESSION *se, UINT64 seq_no, void *data, UINT size)
{
	UCHAR dst[RUDP_MAX_PACKET_SIZE];
	UCHAR *p;
	UCHAR *iv;
	LIST *o = NULL;
	UINT i;
	UCHAR padlen;
	UINT current_size;
	UCHAR sign[SHA1_SIZE];
	UCHAR key[SHA1_SIZE];
	UCHAR keygen[SHA1_SIZE * 2];
	CRYPT *c;
	UINT next_iv_pos;
	UINT num_ack;
	UINT icmp_type = 0;
	// Validate arguments
	if (r == NULL || se == NULL || (size != 0 && data == NULL) || (size > RUDP_MAX_SEGMENT_SIZE))
	{
		return;
	}

	FUNC21(dst, sizeof(dst));
	p = dst;

	// SIGN
	FUNC1(p, se->Key_Send, SHA1_SIZE);
	p += SHA1_SIZE;

	// IV
	iv = p;
	FUNC1(iv, se->NextIv, SHA1_SIZE);
	p += SHA1_SIZE;

	for (i = 0;i < FUNC10(FUNC8(se->ReplyAckList), RUDP_MAX_NUM_ACK);i++)
	{
		UINT64 *seq = FUNC7(se->ReplyAckList, i);

		if (o == NULL)
		{
			o = FUNC12(NULL);
		}

		FUNC0(o, seq);
	}

	// MyTick
	FUNC19(p, r->Now);
	p += sizeof(UINT64);

	// YourTick
	FUNC19(p, se->YourTick);
	p += sizeof(UINT64);

	// MAX_ACK
	FUNC19(p, se->LastRecvCompleteSeqNo);
	p += sizeof(UINT64);

	// NUM_ACK
	num_ack = FUNC8(o);
	FUNC18(p, num_ack);
	p += sizeof(UINT);

	if (o != NULL)
	{
		// ACK body
		for (i = 0;i < FUNC8(o);i++)
		{
			UINT64 *seq = FUNC7(o, i);

			FUNC19(p, *seq);
			p += sizeof(UINT64);

			FUNC3(se->ReplyAckList, seq);

			FUNC5(seq);
		}
		FUNC16(o);
	}

	// SEQ
	FUNC19(p, seq_no);
	p += sizeof(UINT64);

	// data
	FUNC1(p, data, size);
	p += size;

	// padding
	padlen = FUNC15();
	padlen = FUNC9(padlen, 1);

	for (i = 0;i < padlen;i++)
	{
		*p = padlen;
		p++;
	}

	current_size = (UINT)(p - dst);

	// Encrypt
	FUNC1(keygen + 0, iv, SHA1_SIZE);
	FUNC1(keygen + SHA1_SIZE, se->Key_Send, SHA1_SIZE);
	FUNC17(key, keygen, sizeof(keygen));
	c = FUNC11(key, sizeof(key));
	FUNC4(c, dst + SHA1_SIZE * 2, dst + SHA1_SIZE * 2, current_size - (SHA1_SIZE * 2));
	FUNC6(c);

	// Sign
	FUNC17(sign, dst, current_size);
	if (r->Protocol == RUDP_PROTOCOL_DNS || r->Protocol == RUDP_PROTOCOL_ICMP)
	{
		FUNC20(sign, sign, r->SvcNameHash, SHA1_SIZE);
	}
	FUNC1(dst, sign, SHA1_SIZE);

	if (r->Protocol == RUDP_PROTOCOL_ICMP)
	{
		icmp_type = se->Icmp_Type;
	}
	else if (r->Protocol == RUDP_PROTOCOL_DNS)
	{
		icmp_type = se->Dns_TranId;
	}
	FUNC13(r, &se->YourIp, se->YourPort, dst, current_size, icmp_type);

	if (size >= 1)
	{
		se->LastSentTick = r->Now;
	}

	// Next IV
	next_iv_pos = FUNC14() % (current_size - SHA1_SIZE);
	FUNC1(se->NextIv, dst + next_iv_pos, SHA1_SIZE);

#ifdef	RUDP_DETAIL_LOG
	Debug("RUDP %X Segment Sent: %I64u (num_ack=%u, size=%u)\n", se, seq_no, num_ack, size);
#endif	// RUDP_DETAIL_LOG

	if (size >= 1)
	{
#ifdef	RUDP_DETAIL_LOG
		Debug("Send Size: %X %I64u %u %u\n", se, seq_no, size, current_size);
#endif	// RUDP_DETAIL_LOG
	}
}