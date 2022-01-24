#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  IntParam2; int /*<<< orphan*/  IntParam1; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Ipc; TYPE_2__* TubeSend; TYPE_2__* TubeRecv; int /*<<< orphan*/  Cedar; int /*<<< orphan*/  FlushList; int /*<<< orphan*/  DisconnectCauseDirection; int /*<<< orphan*/  DisconnectCauseCode; } ;
typedef  TYPE_1__ PPP_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(PPP_SESSION *p)
{
	// Validate arguments
	if (p == NULL)
	{
		return;
	}

	if (p->TubeRecv != NULL)
	{
		// Record the PPP disconnect reason code for L2TP
		p->TubeRecv->IntParam1 = p->DisconnectCauseCode;
		p->TubeRecv->IntParam2 = p->DisconnectCauseDirection;
	}

	FUNC2(p->FlushList);

	FUNC7(p->TubeRecv);
	FUNC7(p->TubeSend);

	FUNC5(p->Cedar);

	FUNC6(p->TubeRecv);
	FUNC6(p->TubeSend);

	FUNC4(p, NULL);

	if (p->Ipc != NULL)
	{
		FUNC1(p->Ipc);
	}

	FUNC3(p);

	FUNC0(p);
}