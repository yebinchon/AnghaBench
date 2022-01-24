#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  NatTable; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  Now; int /*<<< orphan*/  Counter; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_18__ {scalar_t__ SecureNAT_MaxIcmpSessionsPerIp; } ;
struct TYPE_17__ {int UdpSocketCreated; scalar_t__ IcmpOriginalCopySize; int /*<<< orphan*/  IcmpOriginalCopy; void* UdpRecvQueue; void* UdpSendQueue; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; scalar_t__ DestPort; scalar_t__ DestIp; scalar_t__ SrcPort; scalar_t__ SrcIp; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  lock; TYPE_1__* v; int /*<<< orphan*/  Id; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ HUB_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  NAT_ICMP ; 
 TYPE_3__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC14 (int) ; 

NAT_ENTRY *FUNC15(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, UCHAR *original_copy, UINT original_copy_size)
{
	NAT_ENTRY *n;
	HUB_OPTION *o;
	// Validate arguments
	if (v == NULL || original_copy == NULL || original_copy_size == 0)
	{
		return NULL;
	}

	if (FUNC1(v) == false)
	{
		return NULL;
	}

	o = FUNC9(v);
	if (o != NULL && o->SecureNAT_MaxIcmpSessionsPerIp != 0)
	{
		if (FUNC5(v, src_ip, NAT_ICMP, false) >= o->SecureNAT_MaxIcmpSessionsPerIp)
		{
			NAT_ENTRY *oldest = FUNC6(v, src_ip, NAT_ICMP);

			if (oldest != NULL)
			{
				FUNC4(v, oldest);
			}
		}
	}

	n = FUNC14(sizeof(NAT_ENTRY));
	n->Id = FUNC8(v->Counter);
	n->v = v;
	n->lock = FUNC10();
	n->Protocol = NAT_ICMP;
	n->SrcIp = src_ip;
	n->SrcPort = src_port;
	n->DestIp = dest_ip;
	n->DestPort = dest_port;

	n->CreatedTime = n->LastCommTime = v->Now;

	n->UdpSendQueue = FUNC11();
	n->UdpRecvQueue = FUNC11();

	n->UdpSocketCreated = false;

	n->IcmpOriginalCopy = FUNC2(original_copy, original_copy_size);
	n->IcmpOriginalCopySize = original_copy_size;

	FUNC12(v->SockEvent);

#if	1
	{
		IP ip1, ip2;
		char s1[MAX_SIZE], s2[MAX_SIZE];
		FUNC13(&ip1, src_ip);
		FUNC13(&ip2, dest_ip);
		FUNC7(s1, 0, &ip1);
		FUNC7(s2, 0, &ip2);
		FUNC3("NAT_ENTRY: CreateNatIcmp %s %u -> %s %u\n", s1, src_port, s2, dest_port);

		//NLog(v, "LH_NAT_ICMP_CREATED", n->Id, s1, s2, src_port);
	}
#endif

	FUNC0(v->NatTable, n);

	return n;
}