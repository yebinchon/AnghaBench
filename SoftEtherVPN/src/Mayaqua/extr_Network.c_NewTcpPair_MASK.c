#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ LocalPort; scalar_t__ RemotePort; TYPE_1__* BulkRecvTube; TYPE_1__* BulkSendTube; } ;
struct TYPE_13__ {int /*<<< orphan*/  Ref; } ;
typedef  TYPE_1__ TUBE ;
typedef  int /*<<< orphan*/  TCP_PAIR_HEADER ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  TYPE_2__ SOCK ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (char*,scalar_t__) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC9(SOCK **s1, SOCK **s2)
{
	SOCK *a;
	SOCK *s, *c;
	TUBE *t1, *t2;
	SOCK_EVENT *e1, *e2;
	// Validate arguments
	if (s1 == NULL || s2 == NULL)
	{
		return false;
	}

	a = FUNC3(true, true);
	if (a == NULL)
	{
		return false;
	}

	c = FUNC2("127.0.0.1", a->LocalPort);
	if (c == NULL)
	{
		FUNC6(a);
		return false;
	}

	s = FUNC0(a);
	if (s == NULL)
	{
		FUNC6(c);
		FUNC6(a);
		return false;
	}

	FUNC6(a);

	if ((s->LocalPort != c->RemotePort) || (s->RemotePort != c->LocalPort))
	{
		FUNC6(s);
		FUNC6(c);
		return false;
	}

	FUNC5(&t1, &t2, sizeof(TCP_PAIR_HEADER));

	// Creating a socket event
	e1 = FUNC4();
	e2 = FUNC4();

	FUNC8(t1, e1);
	FUNC8(t2, e2);

	FUNC1(t1->Ref);
	FUNC1(t2->Ref);
	s->BulkRecvTube = c->BulkSendTube = t1;
	s->BulkSendTube = c->BulkRecvTube = t2;

	FUNC7(e1);
	FUNC7(e2);

	*s1 = s;
	*s2 = c;

	return true;
}