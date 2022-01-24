#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  RecvQueue; int /*<<< orphan*/  SendQueue; int /*<<< orphan*/  SessionList; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  int /*<<< orphan*/  L2TP_SESSION ;
typedef  int /*<<< orphan*/  L2TP_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(L2TP_TUNNEL *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	for (i = 0;i < FUNC4(t->SessionList);i++)
	{
		L2TP_SESSION *s = FUNC3(t->SessionList, i);

		FUNC2(s);
	}

	FUNC5(t->SessionList);

	for (i = 0;i < FUNC4(t->SendQueue);i++)
	{
		L2TP_QUEUE *q = FUNC3(t->SendQueue, i);

		FUNC1(q);
	}

	FUNC5(t->SendQueue);

	for (i = 0;i < FUNC4(t->RecvQueue);i++)
	{
		L2TP_QUEUE *q = FUNC3(t->RecvQueue, i);

		FUNC1(q);
	}

	FUNC5(t->RecvQueue);

	FUNC0(t);
}