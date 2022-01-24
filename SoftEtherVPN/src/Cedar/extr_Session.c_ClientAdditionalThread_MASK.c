#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
struct TYPE_14__ {scalar_t__ AdditionalConnectionFailedCounter; scalar_t__ LastCounterResetTick; int /*<<< orphan*/  ConnectingThreads; int /*<<< orphan*/  CurrentNumConnection; } ;
struct TYPE_13__ {scalar_t__ LastTryAddConnectTime; TYPE_3__* Connection; } ;
struct TYPE_12__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ THREAD ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ CONNECTION ;

/* Variables and functions */
 scalar_t__ ADDITIONAL_CONNECTION_COUNTER_RESET_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(THREAD *t, void *param)
{
	SESSION *s;
	CONNECTION *c;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	s = (SESSION *)param;

	s->LastTryAddConnectTime = FUNC12();

	c = s->Connection;
	// Increment of connection counter
	FUNC7(c->CurrentNumConnection);
	FUNC8(c->ConnectingThreads);
	{
		// Add to processing thread
		FUNC0(c->ConnectingThreads, t);
		FUNC1(t->ref);
	}
	FUNC13(c->ConnectingThreads);

	// Notify the completion of initialization
	FUNC9(t);

	FUNC4("Additional Connection #%u\n", FUNC3(c->CurrentNumConnection));

	// Put an additional connection
	if (FUNC2(c, t) == false)
	{
		// Decrement the counter which is currently processing
		FUNC5(c->CurrentNumConnection);

		if (c->AdditionalConnectionFailedCounter == 0)
		{
			c->LastCounterResetTick = FUNC12();
		}

		c->AdditionalConnectionFailedCounter++;

		if ((c->LastCounterResetTick + (UINT64)ADDITIONAL_CONNECTION_COUNTER_RESET_INTERVAL) <= FUNC12())
		{
			// Reset the number of failures periodically
			c->AdditionalConnectionFailedCounter = 0;
			c->LastCounterResetTick = FUNC12();
		}
	}
	else
	{
		s->LastTryAddConnectTime = FUNC12();
		c->AdditionalConnectionFailedCounter = 0;
		c->LastCounterResetTick = FUNC12();
	}

	// Remove from the processing thread
	FUNC8(c->ConnectingThreads);
	{
		// Remove from the processing thread
		if (FUNC6(c->ConnectingThreads, t))
		{
			FUNC11(t);
		}
	}
	FUNC13(c->ConnectingThreads);
	FUNC10(s);
}