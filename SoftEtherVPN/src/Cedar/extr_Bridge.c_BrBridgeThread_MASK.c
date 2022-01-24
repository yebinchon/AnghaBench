#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
struct TYPE_17__ {int /*<<< orphan*/  Name; TYPE_1__* Session; TYPE_2__* Hub; int /*<<< orphan*/  Policy; int /*<<< orphan*/  Cedar; } ;
struct TYPE_16__ {TYPE_1__* Session; int /*<<< orphan*/  Protocol; } ;
struct TYPE_15__ {int /*<<< orphan*/  ref; } ;
struct TYPE_14__ {int BridgeMode; int /*<<< orphan*/  ref; int /*<<< orphan*/  Username; TYPE_4__* Bridge; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ SESSION ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ CONNECTION ;
typedef  TYPE_4__ BRIDGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BRIDGE_USER_NAME ; 
 int /*<<< orphan*/  BRIDGE_USER_NAME_PRINT ; 
 int /*<<< orphan*/  CONNECTION_HUB_BRIDGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*,...) ; 
 int MAX_SIZE ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ) ; 

void FUNC12(THREAD *thread, void *param)
{
	BRIDGE *b;
	CONNECTION *c;
	SESSION *s;
	HUB *h;
	char name[MAX_SIZE];
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	b = (BRIDGE *)param;

	// Create a connection object
	c = FUNC4(b->Cedar, NULL, thread);
	c->Protocol = CONNECTION_HUB_BRIDGE;

	// Create a session object
	s = FUNC5(b->Cedar, c, b->Hub, BRIDGE_USER_NAME, b->Policy);
	FUNC3(b->Hub, "LH_START_BRIDGE", b->Name, s->Name);
	FUNC11(name, sizeof(name), b->Name);
	h = b->Hub;
	FUNC0(h->ref);
	s->BridgeMode = true;
	s->Bridge = b;
	c->Session = s;
	FUNC7(c);

	// Dummy user name for local-bridge
	s->Username = FUNC1(BRIDGE_USER_NAME_PRINT);

	b->Session = s;
	FUNC0(s->ref);

	// Notify completion
	FUNC6(thread);

	// Main procedure of the session
	FUNC2("Bridge %s Start.\n", b->Name);
	FUNC10(s);
	FUNC2("Bridge %s Stop.\n", b->Name);

	FUNC3(h, "LH_STOP_BRIDGE", name);

	FUNC8(h);

	FUNC9(s);
}