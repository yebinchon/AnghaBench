#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
struct TYPE_30__ {scalar_t__ Message; } ;
typedef  TYPE_2__ UCHAR ;
struct TYPE_29__ {int /*<<< orphan*/  Chap_Id; } ;
struct TYPE_35__ {scalar_t__ LastStateSize; int /*<<< orphan*/  NextEapId; TYPE_5__* LastState; int /*<<< orphan*/  NextRadiusPacketId; int /*<<< orphan*/ * ServerResponse; int /*<<< orphan*/  MsChapV2Success; TYPE_2__* Username; TYPE_1__ MsChapV2Challenge; } ;
struct TYPE_34__ {scalar_t__ Code; scalar_t__ Type; } ;
struct TYPE_33__ {scalar_t__ Chap_Opcode; } ;
struct TYPE_32__ {int Chap_ValueSize; scalar_t__ Chap_Opcode; scalar_t__ Type; void* Len; scalar_t__ Id; void* Code; int /*<<< orphan*/ * Chap_Name; int /*<<< orphan*/ * Chap_NtResponse; int /*<<< orphan*/ * Chap_PeerChallenge; void* Chap_Len; int /*<<< orphan*/  Chap_Id; } ;
struct TYPE_31__ {scalar_t__ Parse_EapMessage_DataSize; scalar_t__ Code; int /*<<< orphan*/  AvpList; TYPE_8__* Parse_EapMessage; } ;
struct TYPE_28__ {int Size; TYPE_2__* Buf; } ;
typedef  TYPE_3__ RADIUS_PACKET ;
typedef  TYPE_2__ EAP_MSCHAPV2_SUCCESS_SERVER ;
typedef  TYPE_5__ EAP_MSCHAPV2_SUCCESS_CLIENT ;
typedef  TYPE_5__ EAP_MSCHAPV2_RESPONSE ;
typedef  TYPE_7__ EAP_MSCHAPV2_GENERAL ;
typedef  TYPE_8__ EAP_MESSAGE ;
typedef  TYPE_9__ EAP_CLIENT ;
typedef  TYPE_10__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ EAP_CODE_REQUEST ; 
 void* EAP_CODE_RESPONSE ; 
 scalar_t__ EAP_MSCHAPV2_OP_RESPONSE ; 
 scalar_t__ EAP_MSCHAPV2_OP_SUCCESS ; 
 scalar_t__ EAP_TYPE_MS_AUTH ; 
 TYPE_3__* FUNC2 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_9__*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADIUS_ATTRIBUTE_EAP_MESSAGE ; 
 int /*<<< orphan*/  RADIUS_ATTRIBUTE_STATE ; 
 scalar_t__ RADIUS_CODE_ACCESS_ACCEPT ; 
 int /*<<< orphan*/  RADIUS_CODE_ACCESS_REQUEST ; 
 scalar_t__ FUNC11 (scalar_t__,char*) ; 
 int FUNC12 (TYPE_2__*) ; 
 TYPE_10__* FUNC13 (scalar_t__) ; 
 TYPE_5__* FUNC14 (int) ; 

bool FUNC15(EAP_CLIENT *e, UCHAR *client_response, UCHAR *client_challenge)
{
	bool ret = false;
	RADIUS_PACKET *request1 = NULL;
	RADIUS_PACKET *response1 = NULL;
	RADIUS_PACKET *request2 = NULL;
	RADIUS_PACKET *response2 = NULL;
	EAP_MSCHAPV2_RESPONSE *eap1 = NULL;
	EAP_MSCHAPV2_SUCCESS_CLIENT *eap2 = NULL;
	if (e == NULL || client_response == NULL || client_challenge == NULL)
	{
		return false;
	}

	request1 = FUNC10(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
	FUNC3(request1, e);

	if (e->LastStateSize != 0)
	{
		FUNC0(request1->AvpList, FUNC9(RADIUS_ATTRIBUTE_STATE, 0, 0,
			e->LastState, e->LastStateSize));
	}

	eap1 = FUNC14(sizeof(EAP_MSCHAPV2_RESPONSE));
	eap1->Code = EAP_CODE_RESPONSE;
	eap1->Id = e->NextEapId++;
	eap1->Len = FUNC4(59 + FUNC12(e->Username));
	eap1->Type = EAP_TYPE_MS_AUTH;
	eap1->Chap_Opcode = EAP_MSCHAPV2_OP_RESPONSE;
	eap1->Chap_Id = e->MsChapV2Challenge.Chap_Id;
	eap1->Chap_Len = FUNC4(54 + FUNC12(e->Username));
	eap1->Chap_ValueSize = 49;
	FUNC1(eap1->Chap_PeerChallenge, client_challenge, 16);
	FUNC1(eap1->Chap_NtResponse, client_response, 24);
	FUNC1(eap1->Chap_Name, e->Username, FUNC8(FUNC12(e->Username), 255));

	FUNC0(request1->AvpList, FUNC9(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap1, FUNC12(e->Username) + 59));

	response1 = FUNC2(e, request1);

	if (response1 != NULL)
	{
		if (response1->Parse_EapMessage_DataSize != 0 && response1->Parse_EapMessage != NULL)
		{
			EAP_MESSAGE *eap = response1->Parse_EapMessage;
			if (eap->Code == EAP_CODE_REQUEST)
			{
				if (eap->Type == EAP_TYPE_MS_AUTH)
				{
					if (((EAP_MSCHAPV2_GENERAL *)eap)->Chap_Opcode != EAP_MSCHAPV2_OP_SUCCESS)
					{
						// Auth fail
					}
					else
					{
						// Auth ok
						EAP_MSCHAPV2_SUCCESS_SERVER *eaps = (EAP_MSCHAPV2_SUCCESS_SERVER *)eap;

						if (FUNC11(eaps->Message, "S="))
						{
							BUF *buf = FUNC13(eaps->Message + 2);

							if (buf && buf->Size == 20)
							{
								FUNC1(&e->MsChapV2Success, eaps, sizeof(EAP_MSCHAPV2_SUCCESS_SERVER));
								FUNC1(e->ServerResponse, buf->Buf, 20);

								if (true)
								{
									// Send the final packet
									request2 = FUNC10(RADIUS_CODE_ACCESS_REQUEST, e->NextRadiusPacketId++);
									FUNC3(request2, e);

									if (e->LastStateSize != 0)
									{
										FUNC0(request2->AvpList, FUNC9(RADIUS_ATTRIBUTE_STATE, 0, 0,
											e->LastState, e->LastStateSize));
									}

									eap2 = FUNC14(sizeof(EAP_MSCHAPV2_SUCCESS_CLIENT));
									eap2->Code = EAP_CODE_RESPONSE;
									eap2->Id = e->NextEapId++;
									eap2->Len = FUNC4(6);
									eap2->Type = EAP_TYPE_MS_AUTH;
									eap2->Chap_Opcode = EAP_MSCHAPV2_OP_SUCCESS;

									FUNC0(request2->AvpList, FUNC9(RADIUS_ATTRIBUTE_EAP_MESSAGE, 0, 0, eap2, 6));

									response2 = FUNC2(e, request2);

									if (response2 != NULL)
									{
										if (response2->Code == RADIUS_CODE_ACCESS_ACCEPT)
										{
											ret = true;
										}
									}
								}
							}

							FUNC6(buf);
						}
					}
				}
			}
		}
	}

	FUNC7(request1);
	FUNC7(request2);
	FUNC7(response1);
	FUNC7(response2);
	FUNC5(eap1);
	FUNC5(eap2);

	return ret;
}