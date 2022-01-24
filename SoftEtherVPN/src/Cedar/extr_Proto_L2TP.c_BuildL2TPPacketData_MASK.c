#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int USHORT ;
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
struct TYPE_18__ {int Size; scalar_t__ Buf; } ;
struct TYPE_17__ {int DataSize; int VendorID; int Type; int* Data; scalar_t__ Mandatory; } ;
struct TYPE_16__ {int Ver; scalar_t__ SessionId; int IsControl; scalar_t__ TunnelId; int Ns; int Nr; int* Data; int DataSize; int /*<<< orphan*/  AvpList; } ;
struct TYPE_15__ {int IsYamahaV3; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  TYPE_2__ L2TP_PACKET ;
typedef  TYPE_3__ L2TP_AVP ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_SESSION_ID_LOCAL ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_SESSION_ID_REMOTE ; 
 int L2TP_AVP_BIT_MANDATORY ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE ; 
 int /*<<< orphan*/  L2TP_AVP_VENDOR_ID_CISCO ; 
 int L2TP_HEADER_BIT_LENGTH ; 
 int L2TP_HEADER_BIT_OFFSET ; 
 int L2TP_HEADER_BIT_SEQUENCE ; 
 int L2TP_HEADER_BIT_TYPE ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_4__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,...) ; 

BUF *FUNC12(L2TP_PACKET *pp, L2TP_TUNNEL *t)
{
	BUF *ret;
	UCHAR c;
	USHORT us;
	UINT ui;
	// Validate arguments
	if (pp == NULL || t == NULL)
	{
		return NULL;
	}

	ret = FUNC8();

	c = 0;

	if (pp->Ver == 3)
	{
		if (pp->SessionId != 0)
		{
			// Add the Remote Session ID AVP
			L2TP_AVP *a = FUNC3(pp, L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE);
			if (a == NULL || a->DataSize != sizeof(UINT))
			{
				UINT ui = FUNC2(pp->SessionId);
				FUNC0(pp->AvpList, FUNC7(L2TP_AVP_TYPE_V3_SESSION_ID_REMOTE, true, 0, &ui, sizeof(UINT)));

				if (FUNC4(pp, L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, L2TP_AVP_VENDOR_ID_CISCO) != NULL)
				{
					FUNC0(pp->AvpList, FUNC7(L2TPV3_CISCO_AVP_SESSION_ID_REMOTE, true, L2TP_AVP_VENDOR_ID_CISCO, &ui, sizeof(UINT)));
				}
			}
		}
	}

	if (pp->Ver == 3)
	{
		if (t->IsYamahaV3 == false)
		{
			// Zero as Session ID
			ui = 0;
			FUNC11(ret, &ui, sizeof(UINT));
		}
	}

	// Flags
	if (pp->IsControl)
	{
		c |= L2TP_HEADER_BIT_TYPE;
		c |= L2TP_HEADER_BIT_LENGTH;
		c |= L2TP_HEADER_BIT_SEQUENCE;
	}
	else
	{
		c |= L2TP_HEADER_BIT_OFFSET;
	}

	if (pp->IsControl == false && pp->Ver == 3 && t->IsYamahaV3)
	{
		c = 0;
	}

	FUNC11(ret, &c, 1);

	// Ver
	c = 2;
	if (pp->Ver == 3)
	{
		c = 3;
	}
	FUNC11(ret, &c, 1);

	// Length
	if (pp->IsControl)
	{
		us = 0;
		FUNC11(ret, &us, sizeof(USHORT));
	}

	// Reserved
	if (pp->IsControl == false && pp->Ver == 3 && t->IsYamahaV3)
	{
		us = 0;
		FUNC11(ret, &us, sizeof(USHORT));
	}

	// Tunnel ID
	if (pp->Ver != 3)
	{
		us = FUNC1((USHORT)pp->TunnelId);
		FUNC11(ret, &us, sizeof(USHORT));
	}
	else
	{
		ui = FUNC2(pp->TunnelId);
		FUNC11(ret, &ui, sizeof(UINT));
	}

	// Session ID
	if (pp->Ver != 3)
	{
		us = FUNC1((USHORT)pp->SessionId);
		FUNC11(ret, &us, sizeof(USHORT));
	}

	if (pp->IsControl)
	{
		// Ns
		us = FUNC1(pp->Ns);
		FUNC11(ret, &us, sizeof(USHORT));

		// Nr
		us = FUNC1(pp->Nr);
		FUNC11(ret, &us, sizeof(USHORT));
	}
	else
	{
		if (!(pp->IsControl == false && pp->Ver == 3 && t->IsYamahaV3))
		{
			// Offset Size = 0
			us = 0;
			FUNC11(ret, &us, sizeof(USHORT));
		}
	}

	if (pp->IsControl)
	{
		// AVP
		UINT i;
		for (i = 0;i < FUNC6(pp->AvpList);i++)
		{
			L2TP_AVP *a = FUNC5(pp->AvpList, i);

			// Length and Flags
			us = FUNC1(a->DataSize + 6);

			if (a->Mandatory)
			{
				*((UCHAR *)&us) |= L2TP_AVP_BIT_MANDATORY;
			}

			FUNC11(ret, &us, sizeof(USHORT));

			// Vendor ID
			us = FUNC1(a->VendorID);
			FUNC11(ret, &us, sizeof(USHORT));

			// Type
			us = FUNC1(a->Type);
			FUNC11(ret, &us, sizeof(USHORT));

			// Data
			FUNC11(ret, a->Data, a->DataSize);
		}
	}
	else
	{
		// Payload
		FUNC11(ret, pp->Data, pp->DataSize);
	}

	if (pp->IsControl)
	{
		// Update Length
		bool l2tpv3_non_yamaha = ((pp->Ver == 3) && (t->IsYamahaV3 == false));
		FUNC10(((UCHAR *)ret->Buf) + 2 + (l2tpv3_non_yamaha ? sizeof(UINT) : 0), (USHORT)(ret->Size - (l2tpv3_non_yamaha ? sizeof(UINT) : 0)));
	}

	FUNC9(ret, 0, 0);

	return ret;
}