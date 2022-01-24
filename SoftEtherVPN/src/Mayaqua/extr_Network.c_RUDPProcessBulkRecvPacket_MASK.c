#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  keygen ;
typedef  int /*<<< orphan*/  key ;
typedef  int UINT64 ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_12__ {int UseHMac; int FlushBulkSendTube; TYPE_2__* TcpSock; scalar_t__ BulkRecvSeqNoMax; int /*<<< orphan*/  LastRecvTick; TYPE_1__* BulkRecvKey; } ;
struct TYPE_11__ {int /*<<< orphan*/  Now; } ;
struct TYPE_10__ {int /*<<< orphan*/ * BulkSendTube; } ;
struct TYPE_9__ {int* Data; } ;
typedef  int /*<<< orphan*/  TUBE ;
typedef  TYPE_2__ SOCK ;
typedef  TYPE_3__ RUDP_STACK ;
typedef  TYPE_4__ RUDP_SESSION ;
typedef  int /*<<< orphan*/  CRYPT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int,int*,int) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int*,int) ; 
 int FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  RUDP_BULK_MAX_RECV_PKTS_IN_QUEUE ; 
 scalar_t__ RUDP_BULK_SEQ_NO_RANGE ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

bool FUNC11(RUDP_STACK *r, RUDP_SESSION *se, void *recv_data, UINT recv_size)
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
	UINT64 seq_no;
	UCHAR *payload;
	UINT payload_size;
	// Validate arguments
	if (r == NULL || se == NULL || recv_data == NULL || recv_size == 0 || se->BulkRecvKey == NULL)
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
	if (se->UseHMac == false)
	{
		FUNC1(sign, p, SHA1_SIZE);
		FUNC1(p, se->BulkRecvKey->Data, SHA1_SIZE);
		FUNC9(sign2, p, recv_size);
		FUNC1(p, sign, SHA1_SIZE);

		if (FUNC0(sign, sign2, SHA1_SIZE) != 0)
		{
			FUNC4(sign2, se->BulkRecvKey->Data, SHA1_SIZE, p + SHA1_SIZE, recv_size - SHA1_SIZE);

			if (FUNC0(p, sign2, SHA1_SIZE) != 0)
			{
				return false;
			}
			else
			{
				se->UseHMac = true;
			}
		}
		else
		{
		}
	}
	else
	{
		FUNC4(sign2, se->BulkRecvKey->Data, SHA1_SIZE, p + SHA1_SIZE, recv_size - SHA1_SIZE);

		if (FUNC0(p, sign2, SHA1_SIZE) != 0)
		{
			return false;
		}
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
	FUNC1(keygen + 0, se->BulkRecvKey->Data, SHA1_SIZE);
	FUNC1(keygen + SHA1_SIZE, iv, SHA1_SIZE);
	FUNC9(key, keygen, sizeof(keygen));

	c = FUNC6(key, sizeof(key));
	FUNC2(c, p, p, size);
	FUNC3(c);

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

	// SEQ NO
	seq_no = FUNC7(p);
	p += sizeof(UINT64);
	size -= sizeof(UINT64);

	if (seq_no == 0 || seq_no >= (0xF000000000000000ULL))
	{
		// Sequence number is invalid
		return false;
	}

	if ((seq_no + RUDP_BULK_SEQ_NO_RANGE) < se->BulkRecvSeqNoMax)
	{
		// Sequence number is too small
		return false;
	}

	se->LastRecvTick = r->Now;

	payload = p;
	payload_size = size;

	se->BulkRecvSeqNoMax = FUNC5(seq_no, se->BulkRecvSeqNoMax);

	// Send the received bulk packet to the Tube of the socket
	FUNC8(r, se);

	if (se->TcpSock != NULL)
	{
		SOCK *s = se->TcpSock;
		TUBE *t = s->BulkSendTube;

		if (t != NULL)
		{
			FUNC10(t, payload, payload_size, NULL, true, RUDP_BULK_MAX_RECV_PKTS_IN_QUEUE);

			se->FlushBulkSendTube = true;
		}
	}

	return true;
}