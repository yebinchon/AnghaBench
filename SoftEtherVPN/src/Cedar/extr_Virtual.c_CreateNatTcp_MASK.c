#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  NatTable; int /*<<< orphan*/  TcpMss; int /*<<< orphan*/  Now; int /*<<< orphan*/  Counter; } ;
typedef  TYPE_1__ VH ;
typedef  void* UINT ;
struct TYPE_19__ {scalar_t__ SecureNAT_MaxTcpSynSentPerIp; scalar_t__ SecureNAT_MaxTcpSessionsPerIp; } ;
struct TYPE_18__ {int DisconnectNow; int CurrentRTT; int TcpSendTimeoutSpan; int /*<<< orphan*/  Id; int /*<<< orphan*/  SendSeqInit; int /*<<< orphan*/  TcpStatus; void* RecvFifo; void* SendFifo; int /*<<< orphan*/  TcpRecvMaxSegmentSize; int /*<<< orphan*/  TcpSendMaxSegmentSize; int /*<<< orphan*/ * Sock; int /*<<< orphan*/  TcpLastRecvAckTime; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; void* DestPort; void* DestIp; void* SrcPort; void* SrcIp; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  lock; TYPE_1__* v; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ HUB_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,void*,char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,void*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int NAT_INITIAL_RTT_VALUE ; 
 int /*<<< orphan*/  NAT_TCP ; 
 int /*<<< orphan*/  NAT_TCP_CONNECTING ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*,void*,char*,void*) ; 
 TYPE_3__* FUNC9 (TYPE_1__*) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,void*) ; 
 TYPE_2__* FUNC14 (int) ; 

NAT_ENTRY *FUNC15(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port)
{
	NAT_ENTRY *n;
	HUB_OPTION *o;
	// Validate arguments
	if (v == NULL)
	{
		return NULL;
	}

	if (FUNC1(v) == false)
	{
		return NULL;
	}

	o = FUNC9(v);

	// Fail immediately if the connection with SYN_SENT are too many
	if (o != NULL && o->SecureNAT_MaxTcpSynSentPerIp != 0)
	{
		if (FUNC4(v, src_ip, NAT_TCP, true) >= o->SecureNAT_MaxTcpSynSentPerIp)
		{
			return NULL;
		}
	}

	// If the connections other than SYN_SENT are too many, delete old ones 
	if (o != NULL && o->SecureNAT_MaxTcpSessionsPerIp != 0)
	{
		if (FUNC4(v, src_ip, NAT_TCP, false) >= o->SecureNAT_MaxTcpSessionsPerIp)
		{
			NAT_ENTRY *oldest = FUNC5(v, src_ip, NAT_TCP);

			if (oldest != NULL)
			{
				FUNC3(v, oldest);
			}
		}
	}

	// Create a NAT entry
	n = FUNC14(sizeof(NAT_ENTRY));
	n->Id = FUNC7(v->Counter);
	n->v = v;
	n->lock = FUNC11();
	n->Protocol = NAT_TCP;
	n->SrcIp = src_ip;
	n->SrcPort = src_port;
	n->DestIp = dest_ip;
	n->DestPort = dest_port;
	n->CreatedTime = n->LastCommTime = v->Now;
	n->TcpLastRecvAckTime = v->Now;
	n->Sock = NULL;
	n->DisconnectNow = false;
	n->TcpSendMaxSegmentSize = n->TcpRecvMaxSegmentSize = v->TcpMss;

	n->SendFifo = FUNC10();
	n->RecvFifo = FUNC10();

	n->TcpStatus = NAT_TCP_CONNECTING;

	n->SendSeqInit = FUNC12();
	n->CurrentRTT = NAT_INITIAL_RTT_VALUE;
	n->TcpSendTimeoutSpan = n->CurrentRTT * 2;

	// Add to the NAT table
	FUNC0(v->NatTable, n);


#if	1
	{
		IP ip1, ip2;
		char s1[MAX_SIZE], s2[MAX_SIZE];
		FUNC13(&ip1, src_ip);
		FUNC13(&ip2, dest_ip);
		FUNC6(s1, 0, &ip1);
		FUNC6(s2, 0, &ip2);
		FUNC2("NAT_ENTRY: CreateNatTcp %s %u -> %s %u\n", s1, src_port, s2, dest_port);

		FUNC8(v, "LH_NAT_TCP_CREATED", n->Id, s1, src_port, s2, dest_port);
	}
#endif

	return n;
}