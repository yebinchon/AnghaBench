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
struct TYPE_2__ {scalar_t__ Halting; scalar_t__ ConnectedOld; scalar_t__ ConnectedForce; scalar_t__ Connected; scalar_t__ Inited; scalar_t__ Initing; } ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  int /*<<< orphan*/  NDIS_HANDLE ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  NDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ TRUE ; 
 TYPE_1__* ctx ; 

NDIS_STATUS FUNC4(NDIS_HANDLE MiniportAdapterContext)
{
	if (ctx == NULL)
	{
		return NDIS_STATUS_FAILURE;
	}

	if (ctx->Halting != FALSE)
	{
		// That has already been stopped
		return NDIS_STATUS_SUCCESS;
	}
	ctx->Halting = TRUE;

	// Stop the adapter
	FUNC3();

	// Release the packet array
	FUNC1();

	// Delete the control device
	FUNC0();

	// Complete to stop
	ctx->Initing = ctx->Inited = FALSE;
	ctx->Connected = ctx->ConnectedForce = ctx->ConnectedOld = FALSE;
	ctx->Halting = FALSE;

	// Shutdown of Neo
	FUNC2();

	return NDIS_STATUS_SUCCESS;
}