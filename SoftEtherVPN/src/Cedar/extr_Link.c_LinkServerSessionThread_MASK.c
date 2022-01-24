#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_14__ {TYPE_2__* Session; int /*<<< orphan*/  Protocol; } ;
struct TYPE_13__ {TYPE_1__* Option; TYPE_2__* ServerSession; int /*<<< orphan*/  Hub; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  Policy; } ;
struct TYPE_12__ {int LinkModeServer; int /*<<< orphan*/  Hub; int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; int /*<<< orphan*/  Username; TYPE_3__* Link; } ;
struct TYPE_11__ {int /*<<< orphan*/  AccountName; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ SESSION ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_3__ LINK ;
typedef  TYPE_4__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONNECTION_HUB_LINK_SERVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  LINK_USER_NAME ; 
 int /*<<< orphan*/  LINK_USER_NAME_PRINT ; 
 int MAX_SIZE ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 

void FUNC12(THREAD *t, void *param)
{
	LINK *k = (LINK *)param;
	CONNECTION *c;
	SESSION *s;
	POLICY *policy;
	wchar_t name[MAX_SIZE];
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	// Create a server connection
	c = FUNC4(k->Cedar, NULL, t);
	c->Protocol = CONNECTION_HUB_LINK_SERVER;

	// Create a policy
	policy = FUNC11(sizeof(POLICY));
	FUNC1(policy, k->Policy, sizeof(POLICY));

	// Create a server session
	s = FUNC5(k->Cedar, c, k->Hub, LINK_USER_NAME, policy);
	s->LinkModeServer = true;
	s->Link = k;
	c->Session = s;
	FUNC7(c);

	// User name
	s->Username = FUNC2(LINK_USER_NAME_PRINT);

	k->ServerSession = s;
	FUNC0(k->ServerSession->ref);

	// Notify the initialization completion
	FUNC6(t);

	FUNC10(name, sizeof(name), k->Option->AccountName);
	FUNC3(s->Hub, "LH_LINK_START", name, s->Name);

	// Main function of session
	FUNC9(s);

	FUNC3(s->Hub, "LH_LINK_STOP", name);

	FUNC8(s);
}