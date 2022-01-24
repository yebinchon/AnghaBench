#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ Type; } ;
typedef  TYPE_1__ UDPPACKET ;
struct TYPE_17__ {int ExchangeType; } ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_2__ IKE_PACKET ;

/* Variables and functions */
#define  IKE_EXCHANGE_TYPE_AGGRESSIVE 131 
#define  IKE_EXCHANGE_TYPE_INFORMATION 130 
#define  IKE_EXCHANGE_TYPE_MAIN 129 
#define  IKE_EXCHANGE_TYPE_QUICK 128 
 scalar_t__ IKE_UDP_TYPE_ESP ; 
 scalar_t__ IKE_UDP_TYPE_ISAKMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 

void FUNC7(IKE_SERVER *ike, UDPPACKET *p)
{
	// Validate arguments
	if (ike == NULL || p == NULL)
	{
		return;
	}

	if (p->Type == IKE_UDP_TYPE_ISAKMP)
	{
		// ISAKMP (IKE) packet
		IKE_PACKET *header;

		header = FUNC1(p);
		if (header == NULL)
		{
			return;
		}

		//Debug("InitiatorCookie: %I64u, ResponderCookie: %I64u\n", header->InitiatorCookie, header->ResponderCookie);

		switch (header->ExchangeType)
		{
		case IKE_EXCHANGE_TYPE_MAIN:	// Main mode
			FUNC5(ike, p, header);
			break;

		case IKE_EXCHANGE_TYPE_AGGRESSIVE:	// Aggressive mode
			FUNC3(ike, p, header);
			break;

		case IKE_EXCHANGE_TYPE_QUICK:	// Quick mode
			FUNC6(ike, p, header);
			break;

		case IKE_EXCHANGE_TYPE_INFORMATION:	// Information exchange
			FUNC4(ike, p, header);
			break;
		}

		FUNC0(header);
	}
	else if (p->Type == IKE_UDP_TYPE_ESP)
	{
		// ESP packet
		FUNC2(ike, p);
	}
}