#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  LastRecvEapId; int /*<<< orphan*/  NextRadiusPacketId; int /*<<< orphan*/  Username; int /*<<< orphan*/ * SslPipe; } ;
struct TYPE_18__ {scalar_t__ Code; scalar_t__ Type; scalar_t__* Data; void* Len; int /*<<< orphan*/  Id; } ;
struct TYPE_17__ {int TlsFlags; } ;
struct TYPE_16__ {scalar_t__ Parse_EapMessage_DataSize; scalar_t__ Parse_StateSize; TYPE_3__* Parse_EapMessage; int /*<<< orphan*/  AvpList; TYPE_3__* Parse_State; } ;
typedef  TYPE_1__ RADIUS_PACKET ;
typedef  TYPE_2__ EAP_PEAP ;
typedef  TYPE_3__ EAP_MESSAGE ;
typedef  TYPE_4__ EAP_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ EAP_CODE_REQUEST ; 
 void* EAP_CODE_RESPONSE ; 
 scalar_t__ EAP_TYPE_IDENTITY ; 
 scalar_t__ EAP_TYPE_LEGACY_NAK ; 
 scalar_t__ EAP_TYPE_PEAP ; 
 TYPE_1__* FUNC2 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_4__*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADIUS_ATTRIBUTE_EAP_MESSAGE ; 
 int /*<<< orphan*/  RADIUS_ATTRIBUTE_STATE ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCESS_REQUEST ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int) ; 

bool FUNC11(EAP_CLIENT *e)
{
	bool ret = false;
	RADIUS_PACKET *request1 = NULL;
	RADIUS_PACKET *response1 = NULL;
	RADIUS_PACKET *request2 = NULL;
	RADIUS_PACKET *response2 = NULL;
	EAP_MESSAGE *eap1 = NULL;
	EAP_MESSAGE *eap2 = NULL;
	if (e == NULL)
	{
		return false;
	}
	if (e->SslPipe != NULL)
	{
		return false;
	}

	request1 = FUNC8(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
	FUNC3(request1, e);

	eap1 = FUNC10(sizeof(EAP_MESSAGE));
	eap1->Code = EAP_CODE_RESPONSE;
	eap1->Id = e->LastRecvEapId;
	eap1->Len = FUNC4(FUNC9(e->Username) + 5);
	eap1->Type = EAP_TYPE_IDENTITY;
	FUNC1(eap1->Data, e->Username, FUNC9(e->Username));
	FUNC0(request1->AvpList, FUNC7(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap1, FUNC9(e->Username) + 5));

	response1 = FUNC2(e, request1);

	if (response1 != NULL)
	{
		if (response1->Parse_EapMessage_DataSize != 0 && response1->Parse_EapMessage != NULL)
		{
			EAP_MESSAGE *eap = response1->Parse_EapMessage;
			if (eap->Code == EAP_CODE_REQUEST)
			{
				if (eap->Type != EAP_TYPE_PEAP)
				{
					// Unsupported auth type. Request PEAP.
					request2 = FUNC8(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
					FUNC3(request2, e);

					if (response1->Parse_StateSize != 0)
					{
						FUNC0(request2->AvpList, FUNC7(RADIUS_ATTRIBUTE_STATE, 0, 0,
							response1->Parse_State, response1->Parse_StateSize));
					}

					eap2 = FUNC10(sizeof(EAP_MESSAGE));
					eap2->Code = EAP_CODE_RESPONSE;
					eap2->Id = e->LastRecvEapId;
					eap2->Len = FUNC4(6);
					eap2->Type = EAP_TYPE_LEGACY_NAK;
					eap2->Data[0] = EAP_TYPE_PEAP;

					FUNC0(request2->AvpList, FUNC7(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap2, 6));

					response2 = FUNC2(e, request2);

					if (response2 != NULL && response2->Parse_EapMessage_DataSize != 0 && response2->Parse_EapMessage != NULL)
					{
						eap = response2->Parse_EapMessage;

						if (eap->Code == EAP_CODE_REQUEST && eap->Type == EAP_TYPE_PEAP)
						{
							goto LABEL_PARSE_PEAP;
						}
					}
				}
				else
				{
					EAP_PEAP *peap;
LABEL_PARSE_PEAP:
					peap = (EAP_PEAP *)eap;

					if (peap->TlsFlags == 0x20)
					{
						ret = true;
					}
				}
			}
		}
	}

	FUNC6(request1);
	FUNC6(request2);
	FUNC6(response1);
	FUNC6(response2);
	FUNC5(eap1);
	FUNC5(eap2);

	return ret;
}