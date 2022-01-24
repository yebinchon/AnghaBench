#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rand ;
typedef  int /*<<< orphan*/  pass2 ;
typedef  int /*<<< orphan*/  code ;
typedef  int UCHAR ;
struct TYPE_21__ {int /*<<< orphan*/  AdminThreadList; int /*<<< orphan*/  AdminSockList; int /*<<< orphan*/  HashedPassword; } ;
struct TYPE_20__ {TYPE_2__* s; TYPE_1__* r; } ;
struct TYPE_19__ {int /*<<< orphan*/  ref; } ;
struct TYPE_18__ {scalar_t__ ThreadParam; } ;
typedef  TYPE_2__ THREAD ;
typedef  TYPE_3__ TCP_ACCEPTED_PARAM ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  RPC ;
typedef  TYPE_5__ EL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ElRpcServer ; 
 int FUNC4 (int) ; 
 int INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int*,int) ; 

void FUNC20(THREAD *thread, void *param)
{
	TCP_ACCEPTED_PARAM *data = (TCP_ACCEPTED_PARAM *)param;
	EL *e;
	SOCK *s;
	UCHAR rand[SHA1_SIZE];
	UCHAR pass1[SHA1_SIZE], pass2[SHA1_SIZE];
	// Validate arguments
	if (data == NULL || thread == NULL)
	{
		return;
	}

	e = (EL *)data->r->ThreadParam;
	s = data->s;
	FUNC0(s->ref);
	FUNC16(s, 5000);
	FUNC6(e->AdminThreadList);
	{
		FUNC0(thread->ref);
		FUNC0(s->ref);
		FUNC5(e->AdminThreadList, thread);
		FUNC5(e->AdminSockList, s);
	}
	FUNC18(e->AdminThreadList);
	FUNC7(thread);

	// Submit a challenge
	FUNC8(rand, sizeof(rand));
	FUNC15(s, rand, sizeof(rand), false);

	// Receive a response
	FUNC14(pass1, e->HashedPassword, rand);
	FUNC19(pass2, sizeof(pass2));
	(void)FUNC9(s, pass2, sizeof(pass2), false);

	if (FUNC1(pass1, pass2, SHA1_SIZE) != 0)
	{
		// Password incorrect
		bool code = false;
		code = FUNC4(code);
		FUNC15(s, &code, sizeof(code), false);
	}
	else
	{
		// Password match
		bool code = true;
		RPC *r;

		code = FUNC4(code);
		FUNC15(s, &code, sizeof(code), false);

		FUNC16(s, INFINITE);

		// Start operation as a RPC server
		r = FUNC17(s, ElRpcServer, e);
		FUNC13(r);
		FUNC12(r);
	}

	FUNC3(s);
	FUNC10(s);

	FUNC6(e->AdminThreadList);
	{
		if (FUNC2(e->AdminThreadList, thread))
		{
			FUNC11(thread);
		}
		if (FUNC2(e->AdminSockList, s))
		{
			FUNC10(s);
		}
	}
	FUNC18(e->AdminThreadList);
}