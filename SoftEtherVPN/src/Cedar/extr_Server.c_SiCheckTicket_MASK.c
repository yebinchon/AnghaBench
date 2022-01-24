#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  TicketList; } ;
struct TYPE_7__ {int /*<<< orphan*/  Policy; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  UsernameReal; int /*<<< orphan*/  Username; int /*<<< orphan*/  Ticket; } ;
typedef  TYPE_1__ TICKET ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9(HUB *h, UCHAR *ticket, char *username, UINT username_size, char *usernamereal, UINT usernamereal_size, POLICY *policy, char *sessionname, UINT sessionname_size, char *groupname, UINT groupname_size)
{
	bool ret = false;
	// Validate arguments
	if (h == NULL || ticket == NULL || username == NULL || usernamereal == NULL || policy == NULL || sessionname == NULL)
	{
		return false;
	}

	FUNC6(h->TicketList);
	{
		UINT i;
		for (i = 0;i < FUNC5(h->TicketList);i++)
		{
			TICKET *t = FUNC4(h->TicketList, i);
			if (FUNC0(t->Ticket, ticket, SHA1_SIZE) == 0)
			{
				ret = true;
				FUNC7(username, username_size, t->Username);
				FUNC7(usernamereal, usernamereal_size, t->UsernameReal);
				FUNC7(sessionname, sessionname_size, t->SessionName);
				FUNC7(groupname, groupname_size, t->GroupName);
				FUNC1(policy, &t->Policy, sizeof(POLICY));
				FUNC2(h->TicketList, t);
				FUNC3(t);
				break;
			}
		}
	}
	FUNC8(h->TicketList);

	return ret;
}