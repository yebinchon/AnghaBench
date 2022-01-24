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
struct TYPE_4__ {int /*<<< orphan*/  TubeRecv; int /*<<< orphan*/  TubeSend; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  Interrupt; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  SendQueue; int /*<<< orphan*/  RecvQueue; int /*<<< orphan*/  PPPThread; } ;
typedef  TYPE_1__ SSTP_SERVER ;
typedef  int /*<<< orphan*/  BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(SSTP_SERVER *s)
{
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	FUNC9(s->TubeRecv);
	FUNC9(s->TubeSend);

	FUNC10(s->PPPThread, INFINITE);
	FUNC7(s->PPPThread);

	while (true)
	{
		BLOCK *b = FUNC3(s->RecvQueue);

		if (b == NULL)
		{
			break;
		}

		FUNC1(b);
	}

	while (true)
	{
		BLOCK *b = FUNC3(s->SendQueue);

		if (b == NULL)
		{
			break;
		}

		FUNC1(b);
	}

	FUNC5(s->RecvQueue);
	FUNC5(s->SendQueue);

	FUNC6(s->SockEvent);

	FUNC2(s->Interrupt);

	FUNC4(s->Cedar);

	FUNC8(s->TubeSend);
	FUNC8(s->TubeRecv);

	FUNC0(s);
}