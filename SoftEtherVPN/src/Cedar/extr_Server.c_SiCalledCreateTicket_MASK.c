#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  username ;
typedef  int /*<<< orphan*/  ticket_str ;
typedef  int /*<<< orphan*/  sessionname ;
typedef  int /*<<< orphan*/  realusername ;
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  groupname ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_15__ {int /*<<< orphan*/ * TicketList; } ;
struct TYPE_14__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_13__ {scalar_t__ CreatedTick; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  UsernameReal; int /*<<< orphan*/  Username; int /*<<< orphan*/ * Ticket; int /*<<< orphan*/  Policy; } ;
typedef  TYPE_1__ TICKET ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SESSION_NAME_LEN ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,char*) ; 
 int TICKET_EXPIRES ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC23 (int) ; 

PACK *FUNC24(SERVER *s, PACK *p)
{
	char username[MAX_SIZE];
	char hubname[MAX_SIZE];
	char groupname[MAX_SIZE];
	char realusername[MAX_SIZE];
	char sessionname[MAX_SESSION_NAME_LEN + 1];
	POLICY policy;
	UCHAR ticket[SHA1_SIZE];
	char ticket_str[MAX_SIZE];
	HUB *h;
	UINT i;
	PACK *ret;
	TICKET *t;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return FUNC11();
	}

	FUNC15(p, "UserName", username, sizeof(username));
	FUNC15(p, "GroupName", groupname, sizeof(groupname));
	FUNC15(p, "HubName", hubname, sizeof(hubname));
	FUNC15(p, "RealUserName", realusername, sizeof(realusername));
	FUNC15(p, "SessionName", sessionname, sizeof(sessionname));

	FUNC6(&policy, p);
	if (FUNC14(p, "Ticket") == SHA1_SIZE)
	{
		FUNC13(p, "Ticket", ticket);
	}

	FUNC1(ticket_str, sizeof(ticket_str), ticket, SHA1_SIZE);

	FUNC18(s->Cedar, "LS_TICKET_2", hubname, username, realusername, sessionname,
		ticket_str, TICKET_EXPIRES / 1000);

	// Get the HUB
	h = FUNC5(s->Cedar, hubname);
	if (h == NULL)
	{
		return FUNC11();
	}

	FUNC9(h->TicketList);
	{
		LIST *o = FUNC10(NULL);
		// Discard old tickets
		for (i = 0;i < FUNC8(h->TicketList);i++)
		{
			TICKET *t = FUNC7(h->TicketList, i);
			if ((t->CreatedTick + TICKET_EXPIRES) < FUNC21())
			{
				FUNC0(o, t);
			}
		}
		for (i = 0;i < FUNC8(o);i++)
		{
			TICKET *t = FUNC7(o, i);
			FUNC3(h->TicketList, t);
			FUNC4(t);
		}
		FUNC17(o);

		// Create a ticket
		t = FUNC23(sizeof(TICKET));
		t->CreatedTick = FUNC21();
		FUNC2(&t->Policy, &policy, sizeof(POLICY));
		FUNC2(t->Ticket, ticket, SHA1_SIZE);
		FUNC20(t->Username, sizeof(t->Username), username);
		FUNC20(t->UsernameReal, sizeof(t->UsernameReal), realusername);
		FUNC20(t->GroupName, sizeof(t->GroupName), groupname);
		FUNC20(t->SessionName, sizeof(t->SessionName), sessionname);

		FUNC0(h->TicketList, t);
	}
	FUNC22(h->TicketList);

	FUNC16(h);

	ret = FUNC11();

	FUNC12(ret, "Point", FUNC19(s));

	return ret;
}