#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  notify; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ ccv_nnc_stream_scheduler_t ;
struct TYPE_6__ {TYPE_1__* scheduler; } ;
typedef  TYPE_2__ ccv_nnc_stream_context_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ccv_nnc_stream_scheduler_t* FUNC3(ccv_nnc_stream_context_t* const stream_context)
{
	ccv_nnc_stream_scheduler_t* scheduler = stream_context->scheduler;
	if (!scheduler)
	{
		stream_context->scheduler = scheduler = (ccv_nnc_stream_scheduler_t*)FUNC0(1, sizeof(ccv_nnc_stream_scheduler_t));
		FUNC2(&scheduler->mutex, 0);
		FUNC1(&scheduler->notify, 0);
		FUNC1(&scheduler->wait, 0);
	}
	return scheduler;
}