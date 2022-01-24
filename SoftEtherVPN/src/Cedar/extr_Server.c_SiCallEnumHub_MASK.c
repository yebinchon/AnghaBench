#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_31__ {TYPE_1__* Group; int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; } ;
typedef  TYPE_2__ USER ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_35__ {int /*<<< orphan*/ * HubList; scalar_t__ AssignedClientLicense; scalar_t__ AssignedBridgeLicense; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; scalar_t__ CurrentTcpConnections; scalar_t__ CurrentSessions; } ;
struct TYPE_34__ {scalar_t__ SystemId; int /*<<< orphan*/ * RandomKey; void* AssignedClientLicense; void* AssignedBridgeLicense; int /*<<< orphan*/  Traffic; void* NumTcpConnections; void* MaxSessions; void* NumSessions; void* Point; int /*<<< orphan*/  hostname; int /*<<< orphan*/ * HubList; scalar_t__ Me; } ;
struct TYPE_33__ {int DynamicHub; char* Name; scalar_t__ Type; int Offline; scalar_t__ LastCommTime; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  lock; scalar_t__ NumMacTables; scalar_t__ NumIpTables; scalar_t__ NumSessionsBridge; scalar_t__ NumSessionsClient; scalar_t__ NumSessions; TYPE_6__* FarmMember; int /*<<< orphan*/ * IpTable; int /*<<< orphan*/  MacHashTable; int /*<<< orphan*/ * SessionList; } ;
struct TYPE_32__ {int /*<<< orphan*/ * FarmMemberList; int /*<<< orphan*/  MyRandomKey; TYPE_7__* Cedar; } ;
struct TYPE_30__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_3__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ HUB_LIST ;
typedef  TYPE_4__ HUB ;
typedef  TYPE_6__ FARM_MEMBER ;
typedef  TYPE_7__ CEDAR ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (TYPE_7__*,char*) ; 
 void* FUNC13 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 
 void* FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC29 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC31 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC39 (TYPE_3__*,TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC40 (TYPE_6__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_3__*,char*) ; 
 void* FUNC42 (TYPE_3__*) ; 
 int FUNC43 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC44 (char*,int,char*) ; 
 scalar_t__ TRAFFIC_DIFF_HUB ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC48 (int) ; 

void FUNC49(SERVER *s, FARM_MEMBER *f)
{
	CEDAR *c;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	c = s->Cedar;

	if (f->Me)
	{

		// Enumerate local HUBs
		FUNC22(f->HubList);
		{
			// For a local HUB, re-enumerate by erasing all STATIC HUB list once first
			UINT i;
			LIST *o = FUNC23(NULL);
			for (i = 0;i < FUNC19(f->HubList);i++)
			{
				HUB_LIST *h = FUNC18(f->HubList, i);
				if (h->DynamicHub == false)
				{
					FUNC3(o, h);
				}
			}

			// Clear all the STATIC HUB
			for (i = 0;i < FUNC19(o);i++)
			{
				HUB_LIST *h = FUNC18(o, i);
				FUNC10(h);
				FUNC8(f->HubList, h);
			}
			FUNC37(o);

			// Second, stop DYNAMIC HUBs without user
			o = FUNC23(NULL);
			for (i = 0;i < FUNC19(f->HubList);i++)
			{
				HUB_LIST *h = FUNC18(f->HubList, i);
				if (h->DynamicHub == true)
				{
					FUNC22(c->HubList);
					{
						HUB *hub = FUNC12(s->Cedar, h->Name);
						if (hub != NULL)
						{
							if (FUNC6(hub->NumSessions) == 0 || hub->Type != HUB_TYPE_FARM_DYNAMIC)
							{
								FUNC3(o, h);
							}
							FUNC36(hub);
						}
					}
					FUNC47(c->HubList);
				}
			}

			for (i = 0;i < FUNC19(o);i++)
			{
				HUB_LIST *h = FUNC18(o, i);
				FUNC7("Delete HUB: %s\n", h->Name);
				FUNC10(h);
				FUNC8(f->HubList, h);
			}

			FUNC37(o);

			// Set the enumeration results
			FUNC22(c->HubList);
			{
				for (i = 0;i < FUNC19(c->HubList);i++)
				{
					HUB *h = FUNC18(c->HubList, i);
					if (h->Offline == false)
					{
						if (h->Type == HUB_TYPE_FARM_STATIC)
						{
							HUB_LIST *hh = FUNC48(sizeof(HUB_LIST));
							hh->FarmMember = f;
							hh->DynamicHub = false;
							FUNC44(hh->Name, sizeof(hh->Name), h->Name);
							FUNC3(f->HubList, hh);

							FUNC22(h->SessionList);
							{
								hh->NumSessions = FUNC19(h->SessionList);
								hh->NumSessionsBridge = FUNC6(h->NumSessionsBridge);
								hh->NumSessionsClient = FUNC6(h->NumSessionsClient);
							}
							FUNC47(h->SessionList);

							FUNC21(h->MacHashTable);
							{
								hh->NumMacTables = FUNC14(h->MacHashTable);
							}
							FUNC46(h->MacHashTable);

							FUNC22(h->IpTable);
							{
								hh->NumIpTables = FUNC19(h->IpTable);
							}
							FUNC47(h->IpTable);
						}
					}
				}
			}
			FUNC47(c->HubList);
		}
		FUNC47(f->HubList);

		// Point
		f->Point = FUNC42(s);
		f->NumSessions = FUNC6(s->Cedar->CurrentSessions);
		f->MaxSessions = FUNC13(s, "i_max_sessions");
		f->NumTcpConnections = FUNC6(s->Cedar->CurrentTcpConnections);

		FUNC20(s->Cedar->TrafficLock);
		{
			FUNC5(&f->Traffic, s->Cedar->Traffic, sizeof(TRAFFIC));
		}
		FUNC45(s->Cedar->TrafficLock);

		f->AssignedBridgeLicense = FUNC6(s->Cedar->AssignedBridgeLicense);
		f->AssignedClientLicense = FUNC6(s->Cedar->AssignedClientLicense);

		FUNC5(f->RandomKey, s->MyRandomKey, SHA1_SIZE);


		FUNC7("Server %s: Point %u\n", f->hostname, f->Point);
	}
	else
	{
		// Enumerate HUBs which are remote member
		PACK *p = FUNC24();
		UINT i, num, j;
		LIST *o = FUNC23(NULL);

		num = 0;

		for (i = 0;i < FUNC19(s->FarmMemberList);i++)
		{
			FARM_MEMBER *f = FUNC18(s->FarmMemberList, i);

			if (FUNC17(f->RandomKey, SHA1_SIZE) == false && f->SystemId != 0)
			{
				num++;
			}
		}

		j = 0;

		for (i = 0;i < FUNC19(s->FarmMemberList);i++)
		{
			FARM_MEMBER *f = FUNC18(s->FarmMemberList, i);

			if (FUNC17(f->RandomKey, SHA1_SIZE) == false && f->SystemId != 0)
			{
				FUNC25(p, "MemberRandomKey", f->RandomKey, SHA1_SIZE, j, num);
				FUNC27(p, "MemberSystemId", f->SystemId, j, num);
				j++;
			}
		}
		FUNC26(p, "MemberSystemIdNum", num);

		p = FUNC40(f, p, "enumhub");
		if (p != NULL)
		{
			FUNC22(f->HubList);
			{
				UINT i;
				// Erase the list
				for (i = 0;i < FUNC19(f->HubList);i++)
				{
					HUB_LIST *hh = FUNC18(f->HubList, i);
					FUNC10(hh);
				}
				FUNC9(f->HubList);

				for (i = 0;i < FUNC30(p, "HubName");i++)
				{
					HUB_LIST *hh = FUNC48(sizeof(HUB_LIST));
					UINT num;
					UINT64 LastCommTime;

					FUNC35(p, "HubName", hh->Name, sizeof(hh->Name), i);
					num = FUNC34(p, "NumSession", i);
					hh->DynamicHub = ((FUNC34(p, "HubType", i) == HUB_TYPE_FARM_DYNAMIC) ? true : false);
					hh->FarmMember = f;
					hh->NumSessions = FUNC34(p, "NumSessions", i);
					hh->NumSessionsClient = FUNC34(p, "NumSessionsClient", i);
					hh->NumSessionsBridge = FUNC34(p, "NumSessionsBridge", i);
					hh->NumIpTables = FUNC34(p, "NumIpTables", i);
					hh->NumMacTables = FUNC34(p, "NumMacTables", i);
					LastCommTime = FUNC33(p, "LastCommTime", i);
					FUNC3(f->HubList, hh);
					//Debug("%s\n", hh->Name);

					FUNC22(c->HubList);
					{
						HUB *h = FUNC12(c, hh->Name);

						if (h != NULL)
						{
							// Update the LastCommTime of the Virtual HUB
							FUNC20(h->lock);
							{
								if (h->LastCommTime < LastCommTime)
								{
									h->LastCommTime = LastCommTime;
								}
							}
							FUNC45(h->lock);

							FUNC36(h);
						}
					}
					FUNC47(c->HubList);

					if (hh->DynamicHub && num >= 1)
					{
						// It is not necessary to be registered in the virtual HUB creation
						// history list because user session is already connected.
						// Remove from the Virtual HUB creation history list
						FUNC41(s, hh->Name);
					}

					if (hh->DynamicHub && num == 0)
					{
						// Check the Virtual HUB creation history list.
						// If it is created within 60 seconds of the most recent
						// in the case of Virtual HUB which the first user is not
						// connected yet, not to remove because there is no user
						if (FUNC43(s, hh->Name) == false)
						{
							// Stop because all uses have gone in the dynamic HUB
							HUB *h;
							FUNC22(c->HubList);
							{
								h = FUNC12(c, hh->Name);
							}
							FUNC47(c->HubList);

							if (h != NULL)
							{
								FUNC3(o, h);
							}
						}
					}
				}
			}
			FUNC47(f->HubList);
			f->Point = FUNC31(p, "Point");
			FUNC7("Server %s: Point %u\n", f->hostname, f->Point);
			f->NumSessions = FUNC31(p, "NumTotalSessions");
			if (f->NumSessions == 0)
			{
				f->NumSessions = FUNC31(p, "NumSessions");
			}
			f->MaxSessions = FUNC31(p, "MaxSessions");
			f->NumTcpConnections = FUNC31(p, "NumTcpConnections");
			FUNC15(&f->Traffic, p);

			f->AssignedBridgeLicense = FUNC31(p, "AssignedBridgeLicense");
			f->AssignedClientLicense = FUNC31(p, "AssignedClientLicense");

			if (FUNC29(p, "RandomKey") == SHA1_SIZE)
			{
				FUNC28(p, "RandomKey", f->RandomKey);
			}

			f->SystemId = FUNC32(p, "SystemId");

			// Apply the traffic difference information
			num = FUNC30(p, "TdType");
			for (i = 0;i < num;i++)
			{
				TRAFFIC traffic;
				UINT type;
				HUB *h;
				char name[MAX_SIZE];
				char hubname[MAX_SIZE];

				type = FUNC34(p, "TdType", i);
				FUNC35(p, "TdName", name, sizeof(name), i);
				FUNC35(p, "TdHubName", hubname, sizeof(hubname), i);
				FUNC16(&traffic, p, i);

				FUNC22(c->HubList);
				{
					h = FUNC12(c, hubname);
					if (h != NULL)
					{
						if (type == TRAFFIC_DIFF_HUB)
						{
							FUNC20(h->TrafficLock);
							{
								FUNC4(h->Traffic, &traffic);
							}
							FUNC45(h->TrafficLock);
						}
						else
						{
							FUNC1(h);
							{
								USER *u = FUNC0(h, name);
								if (u != NULL)
								{
									FUNC20(u->lock);
									{
										FUNC4(u->Traffic, &traffic);
									}
									FUNC45(u->lock);
									if (u->Group != NULL)
									{
										FUNC20(u->Group->lock);
										{
											FUNC4(u->Group->Traffic, &traffic);
										}
										FUNC45(u->Group->lock);
									}
									FUNC38(u);
								}
							}
							FUNC2(h);
						}
						FUNC36(h);
					}
					FUNC47(c->HubList);
				}
			}

			FUNC11(p);
		}

		for (i = 0;i < FUNC19(o);i++)
		{
			HUB *h = FUNC18(o, i);
			FUNC39(s, f, h);
			FUNC7("Delete HUB: %s\n", h->Name);
			FUNC36(h);
		}

		FUNC37(o);
	}
}