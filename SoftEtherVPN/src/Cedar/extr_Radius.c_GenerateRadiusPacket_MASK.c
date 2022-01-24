#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zero16 ;
typedef  int /*<<< orphan*/  rand16 ;
typedef  scalar_t__ UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_16__ {scalar_t__ Current; scalar_t__ Buf; int /*<<< orphan*/  Size; } ;
struct TYPE_15__ {scalar_t__ Type; int DataSize; scalar_t__* Data; scalar_t__ VendorCode; int /*<<< orphan*/  VendorId; } ;
struct TYPE_14__ {scalar_t__* Authenticator; scalar_t__ Code; scalar_t__ PacketId; int /*<<< orphan*/  AvpList; } ;
typedef  TYPE_1__ RADIUS_PACKET ;
typedef  TYPE_2__ RADIUS_AVP ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 () ; 
 TYPE_2__* FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR ; 
 scalar_t__ RADIUS_ATTRIBUTE_EAP_MESSAGE ; 
 scalar_t__ RADIUS_ATTRIBUTE_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,int) ; 

BUF *FUNC17(RADIUS_PACKET *p, char *shared_secret)
{
	BUF *b;
	UINT i;
	UCHAR zero16[16];
	UINT len_pos = 0;
	UINT eap_auth_pos = 0;
	bool exist_eap_msg = false;
	bool exist_eap_auth = false;
	if (p == NULL)
	{
		return NULL;
	}

	FUNC16(zero16, sizeof(zero16));

	// Add EAP message auth packet
	for (i = 0;i < FUNC5(p->AvpList);i++)
	{
		RADIUS_AVP *a = (RADIUS_AVP *)FUNC4(p->AvpList, i);

		if (a->Type == RADIUS_ATTRIBUTE_EAP_MESSAGE)
		{
			exist_eap_msg = true;
		}
		if (a->Type == RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR)
		{
			exist_eap_auth = true;
		}
	}

	if (exist_eap_msg && exist_eap_auth == false)
	{
		RADIUS_AVP *a = FUNC7(RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR, 0, 0, zero16, sizeof(zero16));

		FUNC0(p->AvpList, a);
	}

	if (FUNC3(p->Authenticator, 16))
	{
		UCHAR rand16[16];

		FUNC8(rand16, sizeof(rand16));
		FUNC1(p->Authenticator, rand16, 16);
	}

	b = FUNC6();

	FUNC13(b, p->Code);
	FUNC13(b, p->PacketId);
	len_pos = b->Current;
	FUNC15(b, 0);
	FUNC12(b, p->Authenticator, 16);

	for (i = 0;i < FUNC5(p->AvpList);i++)
	{
		RADIUS_AVP *a = (RADIUS_AVP *)FUNC4(p->AvpList, i);

		FUNC13(b, a->Type);

		if (a->Type != RADIUS_ATTRIBUTE_VENDOR_SPECIFIC)
		{
			FUNC13(b, (UCHAR)((UINT)a->DataSize + 2));

			if (a->Type == RADIUS_ATTRIBUTE_EAP_AUTHENTICATOR)
			{
				eap_auth_pos = b->Current;

				if (a->DataSize == 16)
				{
					FUNC16(a->Data, sizeof(a->Data));
				}
			}

			FUNC12(b, a->Data, a->DataSize);
		}
		else
		{
			FUNC13(b, (UCHAR)((UINT)a->DataSize + 8));
			FUNC14(b, a->VendorId);
			FUNC13(b, a->VendorCode);
			FUNC13(b, (UCHAR)((UINT)a->DataSize + 2));
			FUNC12(b, a->Data, a->DataSize);
		}
	}

	FUNC11(((UCHAR *)b->Buf) + len_pos, b->Size);

	if (eap_auth_pos != 0)
	{
		UCHAR eap_auth[16];

		FUNC2(eap_auth, shared_secret, FUNC10(shared_secret), b->Buf, b->Size);

		FUNC1(((UCHAR *)b->Buf) + eap_auth_pos, eap_auth, 16);
	}

	FUNC9(b);

	return b;
}