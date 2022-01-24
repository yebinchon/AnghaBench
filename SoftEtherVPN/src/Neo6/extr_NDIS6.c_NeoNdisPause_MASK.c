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
struct TYPE_2__ {int Paused; scalar_t__ NumCurrentDispatch; } ;
typedef  int /*<<< orphan*/  PNDIS_MINIPORT_PAUSE_PARAMETERS ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  int /*<<< orphan*/  NDIS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* ctx ; 

NDIS_STATUS FUNC3(NDIS_HANDLE MiniportAdapterContext, PNDIS_MINIPORT_PAUSE_PARAMETERS MiniportPauseParameters)
{
	UINT counter_dbg = 0;

	ctx->Paused = true;

	FUNC1();
	FUNC2();

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

	return NDIS_STATUS_SUCCESS;
}