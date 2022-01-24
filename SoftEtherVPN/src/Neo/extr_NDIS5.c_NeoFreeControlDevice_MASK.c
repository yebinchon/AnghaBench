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
struct TYPE_2__ {scalar_t__ Opened; int /*<<< orphan*/  NdisControl; int /*<<< orphan*/ * Event; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ctx ; 

void FUNC3()
{
	if (ctx == NULL)
	{
		return;
	}

	if (ctx->Opened != FALSE)
	{
		// Delete the event
		FUNC2(ctx->Event);
		FUNC1(ctx->Event);
		ctx->Event = NULL;
		ctx->Opened = FALSE;
	}
	// Delete the device
	FUNC0(ctx->NdisControl);
}