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
struct TYPE_4__ {scalar_t__ RecvKey; scalar_t__ SendKey; int /*<<< orphan*/  SendFifo; int /*<<< orphan*/  RecvFifo; int /*<<< orphan*/  Sock; } ;
typedef  TYPE_1__ TCPSOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(TCPSOCK *ts)
{
	// Validate arguments
	if (ts == NULL)
	{
		return;
	}

	FUNC0(ts->Sock);
	FUNC4(ts->Sock);
	FUNC3(ts->RecvFifo);
	FUNC3(ts->SendFifo);

	if (ts->SendKey)
	{
		FUNC2(ts->SendKey);
	}
	if (ts->RecvKey)
	{
		FUNC2(ts->RecvKey);
	}

	FUNC1(ts);
}