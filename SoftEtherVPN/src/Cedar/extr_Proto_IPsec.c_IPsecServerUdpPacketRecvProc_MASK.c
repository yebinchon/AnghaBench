#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ Type; scalar_t__ SrcPort; int Size; void* Data; } ;
typedef  TYPE_1__ UDPPACKET ;
struct TYPE_16__ {int HostIPAddressListChanged; int /*<<< orphan*/  Event; int /*<<< orphan*/ * Interrupts; scalar_t__ Param; } ;
typedef  TYPE_2__ UDPLISTENER ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_19__ {int /*<<< orphan*/ * SendPacketList; void* Now; int /*<<< orphan*/ * SockEvent; int /*<<< orphan*/ * Interrupts; } ;
struct TYPE_18__ {int HostIPAddressListChanged; TYPE_5__* Ike; TYPE_3__* L2TP; int /*<<< orphan*/  OsServiceCheckThreadEvent; } ;
struct TYPE_17__ {int /*<<< orphan*/ * SendPacketList; void* Now; int /*<<< orphan*/ * SockEvent; int /*<<< orphan*/ * Interrupts; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ L2TP_SERVER ;
typedef  TYPE_4__ IPSEC_SERVER ;
typedef  TYPE_5__ IKE_SERVER ;

/* Variables and functions */
 void* FUNC0 (void*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ IKE_UDP_TYPE_ESP ; 
 scalar_t__ IKE_UDP_TYPE_ISAKMP ; 
 scalar_t__ IPSEC_PORT_IPSEC_ESP_UDP ; 
 scalar_t__ IPSEC_PORT_IPSEC_ISAKMP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int ipsec_disable ; 

void FUNC13(UDPLISTENER *u, LIST *packet_list)
{
	UINT i;
	IPSEC_SERVER *s;
	L2TP_SERVER *l2tp;
	IKE_SERVER *ike;
	UINT64 now;
	static UCHAR zero8[8] = {0, 0, 0, 0, 0, 0, 0, 0, };
	// Validate arguments
	if (u == NULL || packet_list == NULL)
	{
		return;
	}
	s = (IPSEC_SERVER *)u->Param;
	if (s == NULL)
	{
		return;
	}

	if (u->HostIPAddressListChanged)
	{
		u->HostIPAddressListChanged = false;

		s->HostIPAddressListChanged = true;

		FUNC8(s->OsServiceCheckThreadEvent);
	}

	now = FUNC11();

	// Adjustment about L2TP server timing
	l2tp = s->L2TP;

	if (l2tp->Interrupts == NULL)
	{
		l2tp->Interrupts = u->Interrupts;
	}

	if (l2tp->SockEvent == NULL)
	{
		FUNC10(l2tp, u->Event);
	}

	l2tp->Now = now;

	// Adjustment about IKE server timing
	ike = s->Ike;

	if (ike->Interrupts == NULL)
	{
		ike->Interrupts = u->Interrupts;
	}

	if (ike->SockEvent == NULL)
	{
		FUNC9(ike, u->Event);
	}

	ike->Now = now;

	if (ipsec_disable == false)
	{
		{
			// Process the received packet
			for (i = 0;i < FUNC6(packet_list);i++)
			{
				UDPPACKET *p = FUNC5(packet_list, i);

				FUNC3(s, p);
			}
		}
	}

	// Interrupt processing of L2TP server
	FUNC4(l2tp);

	// L2TP packet transmission processing
	FUNC12(u, l2tp->SendPacketList);
	FUNC1(l2tp->SendPacketList);

	// Interrupt processing of IKE server
	FUNC7(ike);

	// UDP encapsulation process of IKE server packet scheduled for transmission
	for (i = 0;i < FUNC6(ike->SendPacketList);i++)
	{
		UDPPACKET *p = FUNC5(ike->SendPacketList, i);

		if (p->Type == IKE_UDP_TYPE_ISAKMP && p->SrcPort == IPSEC_PORT_IPSEC_ESP_UDP)
		{
			// Add the Non-ESP Marker
			void *old_data = p->Data;

			p->Data = FUNC0(p->Data, p->Size, zero8, 4);
			p->Size += 4;

			FUNC2(old_data);
		}
		else if (p->Type == IKE_UDP_TYPE_ESP && p->SrcPort == IPSEC_PORT_IPSEC_ISAKMP)
		{
			// Add the Non-IKE Marker
			void *old_data = p->Data;

			p->Data = FUNC0(p->Data, p->Size, zero8, 8);
			p->Size += 8;

			FUNC2(old_data);
		}
	}

	// IKE server packet transmission processing
	FUNC12(u, ike->SendPacketList);
	FUNC1(ike->SendPacketList);
}