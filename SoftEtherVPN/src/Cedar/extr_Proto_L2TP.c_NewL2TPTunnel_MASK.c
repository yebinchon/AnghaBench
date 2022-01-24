#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_17__ {int /*<<< orphan*/  DestPort; int /*<<< orphan*/  DstIP; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  SrcIP; } ;
typedef  TYPE_1__ UDPPACKET ;
struct TYPE_21__ {int DataSize; int /*<<< orphan*/ * Data; } ;
struct TYPE_20__ {int Ver; int /*<<< orphan*/  IsYamahaV3; } ;
struct TYPE_19__ {int /*<<< orphan*/  Now; } ;
struct TYPE_18__ {int IsV3; scalar_t__ TunnelId2; int IsCiscoV3; int /*<<< orphan*/  LastHelloSent; int /*<<< orphan*/  LastRecvTick; void* RecvQueue; void* SendQueue; int /*<<< orphan*/  IsYamahaV3; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/  TunnelId1; int /*<<< orphan*/ * VendorName; int /*<<< orphan*/ * HostName; int /*<<< orphan*/  ServerPort; int /*<<< orphan*/  ServerIp; int /*<<< orphan*/  ClientPort; void* SessionList; } ;
typedef  TYPE_2__ L2TP_TUNNEL ;
typedef  TYPE_3__ L2TP_SERVER ;
typedef  TYPE_4__ L2TP_PACKET ;
typedef  TYPE_5__ L2TP_AVP ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/ * CmpL2TPQueueForRecv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_TUNNEL_ID ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_ASSIGNED_TUNNEL ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_HOST_NAME ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_TUNNEL_ID ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_VENDOR_NAME ; 
 int /*<<< orphan*/  L2TP_AVP_VENDOR_ID_CISCO ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int) ; 

L2TP_TUNNEL *FUNC10(L2TP_SERVER *l2tp, L2TP_PACKET *p, UDPPACKET *udp)
{
	L2TP_TUNNEL *t;
	L2TP_AVP *a;
	// Validate arguments
	if (l2tp == NULL || p == NULL || udp == NULL)
	{
		return NULL;
	}

	t = FUNC9(sizeof(L2TP_TUNNEL));

	if (p->Ver == 3)
	{
		t->IsV3 = true;
	}

	t->SessionList = FUNC6(NULL);

	FUNC0(&t->ClientIp, &udp->SrcIP, sizeof(IP));
	t->ClientPort = udp->SrcPort;

	FUNC0(&t->ServerIp, &udp->DstIP, sizeof(IP));
	t->ServerPort = udp->DestPort;

	// Hostname
	a = FUNC3(p, L2TP_AVP_TYPE_HOST_NAME);
	if (a != NULL && a->DataSize >= 1 && a->DataSize < sizeof(t->HostName))
	{
		FUNC0(t->HostName, a->Data, a->DataSize);
	}
	else
	{
		FUNC5(t->HostName, sizeof(t->HostName), &t->ClientIp);
	}

	// Vendor Name
	a = FUNC3(p, L2TP_AVP_TYPE_VENDOR_NAME);
	if (a != NULL && a->DataSize >= 1 && a->DataSize < sizeof(t->VendorName))
	{
		FUNC0(t->VendorName, a->Data, a->DataSize);
	}

	// Assigned Tunnel ID
	a = FUNC3(p, (p->Ver == 3 ? L2TP_AVP_TYPE_V3_TUNNEL_ID : L2TP_AVP_TYPE_ASSIGNED_TUNNEL));
	if (a == NULL || a->DataSize != (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)))
	{
		goto LABEL_ERROR;
	}

	t->TunnelId1 = (t->IsV3 ? FUNC7(a->Data) : FUNC8(a->Data));
	t->TunnelId2 = FUNC2(l2tp, &t->ClientIp, t->IsV3);

	if (t->TunnelId2 == 0)
	{
		goto LABEL_ERROR;
	}

	if (p->Ver == 3)
	{
		// Identify whether it's Cisco
		a = FUNC4(p, L2TPV3_CISCO_AVP_TUNNEL_ID, L2TP_AVP_VENDOR_ID_CISCO);
		if (a != NULL)
		{
			t->IsCiscoV3 = true;
		}

		// L2TPv3 on YAMAHA
		t->IsYamahaV3 = p->IsYamahaV3;
	}

	// Transmission queue
	t->SendQueue = FUNC6(NULL);

	// Reception queue
	t->RecvQueue = FUNC6(CmpL2TPQueueForRecv);

	t->LastRecvTick = l2tp->Now;
	t->LastHelloSent = l2tp->Now;

	return t;

LABEL_ERROR:
	FUNC1(t);
	return NULL;
}