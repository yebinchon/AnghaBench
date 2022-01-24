#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ USHORT ;
typedef  scalar_t__ UINT ;
struct TYPE_31__ {int DataSize; int /*<<< orphan*/  Data; } ;
struct TYPE_30__ {scalar_t__ SessionId; scalar_t__ MessageType; int /*<<< orphan*/  AvpList; } ;
struct TYPE_29__ {int Halt; int /*<<< orphan*/  Now; } ;
struct TYPE_28__ {int PseudowireType; scalar_t__ SessionId1; int SessionId2; int IsV3; int Established; int Disconnecting; scalar_t__ IsCiscoV3; } ;
struct TYPE_27__ {int Established; int Disconnecting; int WantToDisconnect; scalar_t__ TunnelId1; int IsYamahaV3; int /*<<< orphan*/  TunnelId2; scalar_t__ IsV3; int /*<<< orphan*/  SessionList; int /*<<< orphan*/  LastHelloSent; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  TYPE_2__ L2TP_SESSION ;
typedef  TYPE_3__ L2TP_SERVER ;
typedef  TYPE_4__ L2TP_PACKET ;
typedef  TYPE_5__ L2TP_AVP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 TYPE_5__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_PW_TYPE ; 
 int /*<<< orphan*/  L2TPV3_CISCO_AVP_SESSION_ID_LOCAL ; 
 int L2TPV3_PW_TYPE_ETHERNET ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_ASSIGNED_SESSION ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_ASSIGNED_TUNNEL ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_CIRCUIT_STATUS ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_PW_TYPE ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL ; 
 int /*<<< orphan*/  L2TP_AVP_TYPE_V3_TUNNEL_ID ; 
 int /*<<< orphan*/  L2TP_AVP_VENDOR_ID_CISCO ; 
 scalar_t__ L2TP_MESSAGE_TYPE_CDN ; 
 scalar_t__ L2TP_MESSAGE_TYPE_ICCN ; 
 int /*<<< orphan*/  L2TP_MESSAGE_TYPE_ICRP ; 
 scalar_t__ L2TP_MESSAGE_TYPE_ICRQ ; 
 scalar_t__ L2TP_MESSAGE_TYPE_SCCCN ; 
 scalar_t__ L2TP_MESSAGE_TYPE_STOPCCN ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC13 (TYPE_3__*,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_1__*,scalar_t__,TYPE_4__*) ; 

void FUNC17(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_PACKET *p)
{
	// Validate arguments
	if (l2tp == NULL || t == NULL || p == NULL)
	{
		return;
	}

	if (p->SessionId == 0)
	{
		if (p->MessageType == L2TP_MESSAGE_TYPE_SCCCN && l2tp->Halt == false)
		{
			// Tunnel establishment completed
			if (t->Established == false)
			{
				if (t->Disconnecting == false)
				{
					t->Established = true;
					t->LastHelloSent = l2tp->Now;
				}
			}
		}

		if (t->Established)
		{
			if (p->MessageType == L2TP_MESSAGE_TYPE_ICRQ && t->WantToDisconnect == false && l2tp->Halt == false)
			{
				// Request to establish a new session arrives
				L2TP_AVP *a = FUNC7(p,
					(t->IsV3 ? L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL : L2TP_AVP_TYPE_ASSIGNED_SESSION));
				if (a != NULL && a->DataSize == (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)) && FUNC10(a->Data, (t->IsV3 ? sizeof(UINT) : sizeof(USHORT))) == false)
				{
					UINT session_id = (t->IsV3 ? FUNC14(a->Data) : FUNC15(a->Data));

					// Check whether there is other same session ID
					if (FUNC9(t, session_id) == NULL)
					{
						// Create a session
						L2TP_SESSION *s = FUNC13(l2tp, t, session_id);

						if (s != NULL)
						{
							L2TP_PACKET *pp;
							USHORT us;
							UINT ui;

							// Get the PseudowireType
							if (t->IsV3)
							{
								s->PseudowireType = L2TPV3_PW_TYPE_ETHERNET;

								a = FUNC7(p, L2TP_AVP_TYPE_V3_PW_TYPE);

								if (a != NULL && a->DataSize == sizeof(USHORT))
								{
									ui = FUNC15(a->Data);

									s->PseudowireType = ui;
								}
							}

							FUNC0(t->SessionList, s);
							FUNC1("L2TP New Session: ID = %u/%u on Tunnel %u/%u\n", s->SessionId1, s->SessionId2,
								t->TunnelId1, t->TunnelId2);

							// Respond the session creation completion notice
							pp = FUNC12(L2TP_MESSAGE_TYPE_ICRP, s->IsV3);

							// Assigned Session AVP
							if (s->IsV3 == false)
							{
								us = FUNC4(s->SessionId2);
								FUNC0(pp->AvpList, FUNC11(L2TP_AVP_TYPE_ASSIGNED_SESSION, true, 0, &us, sizeof(USHORT)));
							}
							else
							{
								ui = FUNC5(s->SessionId2);
								FUNC0(pp->AvpList, FUNC11(L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL, true, 0, &ui, sizeof(UINT)));

								if (s->IsCiscoV3)
								{
									FUNC0(pp->AvpList, FUNC11(L2TPV3_CISCO_AVP_SESSION_ID_LOCAL, true, L2TP_AVP_VENDOR_ID_CISCO, &ui, sizeof(UINT)));
								}
							}

							if (s->IsV3)
							{
								if (t->IsYamahaV3 == false)
								{
									// Pseudowire AVP
									us = FUNC4(s->PseudowireType);
									FUNC0(pp->AvpList, FUNC11(L2TP_AVP_TYPE_V3_PW_TYPE, true, 0, &us, sizeof(USHORT)));
								}

								if (s->IsCiscoV3)
								{
									FUNC0(pp->AvpList, FUNC11(L2TPV3_CISCO_AVP_PW_TYPE, true, L2TP_AVP_VENDOR_ID_CISCO, &us, sizeof(USHORT)));
								}

								if (t->IsYamahaV3)
								{
									us = FUNC4(0x0003);
									FUNC0(pp->AvpList, FUNC11(L2TP_AVP_TYPE_V3_CIRCUIT_STATUS, true, 0, &us, sizeof(USHORT)));
								}
							}

							FUNC16(l2tp, t, session_id, pp);

							FUNC6(pp);
						}
					}
				}
			}
			else if (p->MessageType == L2TP_MESSAGE_TYPE_STOPCCN)
			{
				// Tunnel disconnect request arrives
				L2TP_AVP *a = FUNC7(p, (t->IsV3 ? L2TP_AVP_TYPE_V3_TUNNEL_ID : L2TP_AVP_TYPE_ASSIGNED_TUNNEL));
				if (a != NULL && a->DataSize == (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)))
				{
					UINT ui = (t->IsV3 ? FUNC14(a->Data) : FUNC15(a->Data));

					if (ui == t->TunnelId1)
					{
						// Disconnect the tunnel
						FUNC3(t);
					}
				}
			}
		}
	}
	else
	{
		// Search a session
		L2TP_SESSION *s = FUNC8(t, p->SessionId);

		if (s != NULL)
		{
			if (s->Established == false)
			{
				if (p->MessageType == L2TP_MESSAGE_TYPE_ICCN)
				{
					// Session establishment completed
					if (s->Disconnecting == false)
					{
						s->Established = true;
					}
				}
			}
			else
			{
				if (p->MessageType == L2TP_MESSAGE_TYPE_CDN)
				{
					// Received a session disconnection request
					L2TP_AVP *a = FUNC7(p,
						(t->IsV3 ? L2TP_AVP_TYPE_V3_SESSION_ID_LOCAL : L2TP_AVP_TYPE_ASSIGNED_SESSION));
					if (a != NULL && a->DataSize == (t->IsV3 ? sizeof(UINT) : sizeof(USHORT)))
					{
						UINT ui = (t->IsV3 ? FUNC14(a->Data) : FUNC15(a->Data));

						if (ui == s->SessionId1)
						{
							// Disconnect the session
							FUNC2(t, s);
						}
					}
				}
			}
		}
		else
		{
			FUNC1("Session ID %u not found in Tunnel ID %u/%u\n", p->SessionId, t->TunnelId1, t->TunnelId2);
		}
	}
}