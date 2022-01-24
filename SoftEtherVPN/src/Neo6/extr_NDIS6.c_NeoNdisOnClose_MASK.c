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
struct TYPE_2__ {scalar_t__ Opened; int /*<<< orphan*/ * Event; } ;
typedef  int /*<<< orphan*/  NEO_EVENT ;
typedef  int /*<<< orphan*/  IRP ;
typedef  int /*<<< orphan*/  IO_STACK_LOCATION ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ TRUE ; 
 TYPE_1__* ctx ; 

BOOL FUNC5(IRP *irp, IO_STACK_LOCATION *stack)
{
	NEO_EVENT *free_event = NULL;
	if (ctx == NULL)
	{
		return FALSE;
	}

	if (ctx->Opened == FALSE)
	{
		// Client is not connected
		return FALSE;
	}
	ctx->Opened = FALSE;

	FUNC2();
	{
		// Release the event
		free_event = ctx->Event;
		ctx->Event = NULL;

		// Release all packets
		FUNC0(true);
	}
	FUNC4();

	if (free_event != NULL)
	{
		FUNC1(free_event);
	}

	FUNC3(FALSE);

	return TRUE;
}