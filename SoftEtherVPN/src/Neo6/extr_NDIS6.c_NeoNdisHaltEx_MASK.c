#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_2__ {scalar_t__ Halting; scalar_t__ NumCurrentDispatch; scalar_t__ ConnectedOld; scalar_t__ ConnectedForce; scalar_t__ Connected; scalar_t__ Inited; scalar_t__ Initing; int /*<<< orphan*/ * Event; scalar_t__ Opened; } ;
typedef  int /*<<< orphan*/  NEO_EVENT ;
typedef  int /*<<< orphan*/  NDIS_HANDLE ;
typedef  int /*<<< orphan*/  NDIS_HALT_ACTION ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ TRUE ; 
 TYPE_1__* ctx ; 

void FUNC10(NDIS_HANDLE MiniportAdapterContext, NDIS_HALT_ACTION HaltAction)
{
	NEO_EVENT *free_event = NULL;
	UINT counter_dbg = 0;
	if (ctx == NULL)
	{
		return;
	}

	if (ctx->Halting != FALSE)
	{
		// That has already been stopped
		return;
	}
	ctx->Halting = TRUE;

	ctx->Opened = FALSE;

	FUNC5();
	{
		// Release the event
		free_event = ctx->Event;
		ctx->Event = NULL;

		// Release all packets
		FUNC1(true);
	}
	FUNC9();

	if (free_event != NULL)
	{
		FUNC6(free_event);
	}

	// Wait for complete all tasks
	while (ctx->NumCurrentDispatch != 0)
	{
		FUNC0(10000);
		counter_dbg++;
		if (counter_dbg >= 1500)
		{
			break;
		}
	}

	if (free_event != NULL)
	{
		FUNC3(free_event);
	}

	// Delete the control device
	FUNC2();

	// Stop the adapter
	FUNC8();

	// Release the packet array
	FUNC4();

	// Complete to stop
	ctx->Initing = ctx->Inited = FALSE;
	ctx->Connected = ctx->ConnectedForce = ctx->ConnectedOld = FALSE;
	ctx->Halting = FALSE;

	// Shutdown of Neo
	FUNC7();
}