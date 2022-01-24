#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ct1 ;
typedef  int /*<<< orphan*/  c ;
typedef  int UINT ;
struct TYPE_9__ {int num; int a; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wait_thread; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ EVENT ;
typedef  TYPE_1__ CHECK_THREAD_3 ;
typedef  TYPE_1__ CHECK_THREAD_1 ;

/* Variables and functions */
 int CHECK_THREAD_INCREMENT_COUNT ; 
 int /*<<< orphan*/  CheckThread1 ; 
 int /*<<< orphan*/  CheckThread2 ; 
 int /*<<< orphan*/  CheckThread3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ ** FUNC11 (int) ; 

bool FUNC12()
{
	bool ok = true;
	CHECK_THREAD_1 ct1;
	UINT num = 32;
	UINT i;
	THREAD **threads;
	EVENT *e;
	THREAD *t2;
	THREAD *t;
	CHECK_THREAD_3 c;

	e = FUNC2();

	FUNC10(&ct1, sizeof(ct1));
	ct1.lock = FUNC3();

	t2 = FUNC4(CheckThread2, e);
	ct1.wait_thread = t2;

	threads = FUNC11(sizeof(THREAD *) * num);
	for (i = 0;i < num;i++)
	{
		threads[i] = FUNC4(CheckThread1, &ct1);
		if (threads[i] == NULL)
		{
			FUNC5("Thread %u Create Failed.\n", i);
			ok = false;
		}
	}

	FUNC8(e);

	for (i = 0;i < num;i++)
	{
		FUNC9(threads[i], INFINITE);
		FUNC7(threads[i]);
	}

	FUNC1(threads);

	if (ct1.num != (num * CHECK_THREAD_INCREMENT_COUNT))
	{
		FUNC5("Threading: %u != %u\n", ct1.num, num * CHECK_THREAD_INCREMENT_COUNT);
		ok = false;
	}

	FUNC0(ct1.lock);

	FUNC9(t2, INFINITE);
	FUNC7(t2);

	FUNC6(e);

	num = 32;

	FUNC10(&c, sizeof(c));
	c.num = num;
	t = FUNC4(CheckThread3, &c);
	FUNC9(t, INFINITE);
	FUNC7(t);

	if (c.a != num)
	{
		FUNC5("Threading: %u != %u\n", c.a, num);
		ok = false;
	}

	return ok;
}