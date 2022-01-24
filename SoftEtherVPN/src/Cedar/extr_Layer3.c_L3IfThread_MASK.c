#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  username ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_25__ {TYPE_3__* Session; int /*<<< orphan*/  Protocol; } ;
struct TYPE_24__ {TYPE_3__* Session; TYPE_13__* Hub; TYPE_2__* Switch; } ;
struct TYPE_23__ {int NoBroadcastLimiter; } ;
struct TYPE_22__ {int L3SwitchMode; char* UserNameReal; int /*<<< orphan*/  ref; int /*<<< orphan*/ * Username; TYPE_5__* L3If; int /*<<< orphan*/ * Name; } ;
struct TYPE_21__ {int /*<<< orphan*/  Name; TYPE_11__* Cedar; } ;
struct TYPE_20__ {scalar_t__ ServerType; } ;
struct TYPE_19__ {int /*<<< orphan*/  SessionCounter; } ;
struct TYPE_18__ {TYPE_1__* Server; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_3__ SESSION ;
typedef  TYPE_4__ POLICY ;
typedef  TYPE_5__ L3IF ;
typedef  TYPE_6__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONNECTION_HUB_LAYER3 ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* L3_USERNAME ; 
 int MAX_SIZE ; 
 TYPE_6__* FUNC9 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (TYPE_11__*,TYPE_6__*,TYPE_13__*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

void FUNC18(THREAD *t, void *param)
{
	L3IF *f;
	CONNECTION *c;
	SESSION *s;
	POLICY *policy;
	char tmp[MAX_SIZE];
	char name[MAX_SIZE];
	char username[MAX_SIZE];
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	f = (L3IF *)param;

	FUNC16(username, sizeof(username), L3_USERNAME);
	if (f->Switch != NULL)
	{
		FUNC15(username, sizeof(username), f->Switch->Name);
	}

	// Create a connection
	c = FUNC9(f->Switch->Cedar, NULL, t);
	c->Protocol = CONNECTION_HUB_LAYER3;

	// Create a Session
	policy = FUNC1(FUNC6());
	// Not to limit the number of broadcast by policy
	policy->NoBroadcastLimiter = true;
	s = FUNC10(f->Switch->Cedar, c, f->Hub, username, policy);
	c->Session = s;

	FUNC12(c);

	// Determine the name of the session
	FUNC7(tmp, sizeof(tmp));
	if (f->Switch->Cedar->Server->ServerType == SERVER_TYPE_STANDALONE)
	{
		FUNC4(name, sizeof(name), "SID-L3-%s-%u", f->Switch->Name, FUNC8(f->Hub->SessionCounter));
	}
	else
	{
		FUNC4(name, sizeof(name), "SID-L3-%s-%s-%u", tmp, f->Switch->Name, FUNC8(f->Hub->SessionCounter));
	}
	FUNC2(name, sizeof(name), name);
	FUNC17(name);

	FUNC5(s->Name);
	s->Name = FUNC3(name);

	s->L3SwitchMode = true;
	s->L3If = f;

	if (s->Username != NULL)
	{
		FUNC5(s->Username);
	}
	s->Username = FUNC3(username);

	FUNC16(s->UserNameReal, sizeof(s->UserNameReal), username);

	f->Session = s;
	FUNC0(s->ref);

	// Notify the initialization completion
	FUNC11(t);

	// Session main process
	FUNC14(s);

	// Release the session
	FUNC13(s);
}