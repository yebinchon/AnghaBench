#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  Now; int /*<<< orphan*/  Counter; TYPE_4__* NativeNat; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ USHORT ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int /*<<< orphan*/  Checksum; void* PacketLength; void* DstPort; void* SrcPort; } ;
typedef  TYPE_2__ UDP_HEADER ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_22__ {int /*<<< orphan*/  NatTableForRecv; int /*<<< orphan*/  NatTableForSend; int /*<<< orphan*/  PublicIP; } ;
struct TYPE_21__ {scalar_t__ PublicPort; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  TotalSent; int /*<<< orphan*/  Id; int /*<<< orphan*/  CreatedTime; scalar_t__ DestPort; scalar_t__ DestIp; scalar_t__ SrcPort; scalar_t__ SrcIp; int /*<<< orphan*/  Protocol; void* HashCodeForRecv; void* HashCodeForSend; int /*<<< orphan*/  Status; } ;
typedef  TYPE_3__ NATIVE_NAT_ENTRY ;
typedef  TYPE_4__ NATIVE_NAT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* INFINITE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  NAT_TCP_ESTABLISHED ; 
 int /*<<< orphan*/  NAT_UDP ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ,char*,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,scalar_t__,scalar_t__) ; 
 int FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 void* FUNC16 (scalar_t__) ; 

void FUNC17(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size, UINT max_l3_size)
{
	NATIVE_NAT_ENTRY tt;
	NATIVE_NAT_ENTRY *e;
	NATIVE_NAT *t;
	UDP_HEADER *udp;
	// Validate arguments
	if (FUNC11(v) == false || data == NULL)
	{
		return;
	}

	t = v->NativeNat;

	// Search whether there is an existing session
	FUNC13(&tt, NAT_UDP, src_ip, src_port, 0, 0, 0, 0);

	e = FUNC14(t->NatTableForSend, &tt);

	if (e == NULL)
	{
		// Create a new session because there is no existing one
		UINT public_port;

		if (FUNC2(v) == false)
		{
			// Can not make any more
			return;
		}

		FUNC9(t, src_ip, NAT_UDP);

		// Get a free port
		public_port = FUNC12(t, NAT_UDP, 0, 0, t->PublicIP);
		if (public_port == 0)
		{
			// There are no free ports
			return;
		}

		e = FUNC16(sizeof(NATIVE_NAT_ENTRY));

		e->Status = NAT_TCP_ESTABLISHED;

		e->HashCodeForSend = INFINITE;
		e->HashCodeForRecv = INFINITE;
		e->Id = FUNC7(v->Counter);
		e->Protocol = NAT_UDP;
		e->SrcIp = src_ip;
		e->SrcPort = src_port;
		e->DestIp = 0;
		e->DestPort = 0;
		e->PublicIp = t->PublicIP;
		e->PublicPort = public_port;

		e->CreatedTime = v->Now;
		e->LastCommTime = v->Now;

		// Add to the list
		FUNC0(t->NatTableForSend, e);
		FUNC0(t->NatTableForRecv, e);

		// Log
		if (true)
		{
			IP ip1, ip2;
			char s1[MAX_SIZE], s2[MAX_SIZE];
			FUNC15(&ip1, src_ip);
			FUNC15(&ip2, dest_ip);
			FUNC6(s1, 0, &ip1);
			FUNC6(s2, 0, &ip2);

			FUNC8(v, "LH_NAT_UDP_CREATED", e->Id, s1, src_port, s2, dest_port);
		}
	}

	// Rebuild the UDP header
	udp = FUNC16(sizeof(UDP_HEADER) + size);

	udp->SrcPort = FUNC4(e->PublicPort);
	udp->DstPort = FUNC4(dest_port);
	udp->PacketLength = FUNC4((USHORT)sizeof(UDP_HEADER) + size);

	FUNC3(((UCHAR *)udp) + sizeof(UDP_HEADER), data, size);

	udp->Checksum = FUNC1(e->PublicIp, dest_ip, IP_PROTO_UDP, udp, sizeof(UDP_HEADER) + size, 0);

	e->TotalSent += (UINT64)size;
	e->LastCommTime = v->Now;

	// Send to the Internet
	FUNC10(t, IP_PROTO_UDP, 127, e->PublicIp, dest_ip, udp, sizeof(UDP_HEADER) + size, max_l3_size);

	FUNC5(udp);
}