#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  X ;
typedef  int UINT ;
struct TYPE_12__ {TYPE_1__* ListenSocket; } ;
struct TYPE_11__ {int /*<<< orphan*/ * x; int /*<<< orphan*/ * k; TYPE_1__* s; } ;
struct TYPE_10__ {int /*<<< orphan*/  ref; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  NAME ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_2__ CHECK_NETWORK_2 ;
typedef  TYPE_3__ CHECK_NETWORK_1 ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CheckNetworkAcceptThread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 

void FUNC20(THREAD *thread, void *param)
{
	CHECK_NETWORK_1 *c = (CHECK_NETWORK_1 *)param;
	SOCK *s;
	UINT i;
	K *pub, *pri;
	X *x;
	LIST *o = FUNC9(NULL);
	NAME *name = FUNC10(L"Test", L"Test", L"Test", L"JP", L"Ibaraki", L"Tsukuba");

	FUNC17(&pri, &pub, 1024);
	x = FUNC11(pub, pri, name, 1000, NULL);

	FUNC3(name);

	for (i = 1025;;i++)
	{
		s = FUNC8(i);
		if (s != NULL)
		{
			break;
		}
	}

	c->ListenSocket = s;
	FUNC1(s->ref);

	FUNC13(thread);

	while (true)
	{
		SOCK *new_sock = FUNC0(s);

		if (new_sock == NULL)
		{
			break;
		}
		else
		{
			CHECK_NETWORK_2 c;
			THREAD *t;

			FUNC19(&c, sizeof(c));
			c.s = new_sock;
			c.k = pri;
			c.x = x;

			t = FUNC12(CheckNetworkAcceptThread, &c);
			FUNC5(o, t);
		}
	}

	for (i = 0;i < FUNC7(o);i++)
	{
		THREAD *t = FUNC6(o, i);
		FUNC18(t, INFINITE);
		FUNC16(t);
	}

	FUNC2(pri);
	FUNC2(pub);

	FUNC4(x);

	FUNC15(s);
	FUNC14(o);
}