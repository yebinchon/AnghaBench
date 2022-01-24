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
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  notify; scalar_t__ active; } ;
typedef  TYPE_1__ ccv_nnc_stream_scheduler_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; TYPE_1__* scheduler; } ;
typedef  TYPE_2__ ccv_nnc_stream_context_t ;

/* Variables and functions */
 scalar_t__ CCV_STREAM_CONTEXT_GPU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(const ccv_nnc_stream_context_t* const stream_context)
{
	if (!stream_context)
		return;
	ccv_nnc_stream_scheduler_t* const scheduler = stream_context->scheduler;
	if (scheduler) // First wait the scheduler to finish.
	{
		FUNC3(&scheduler->mutex);
		while (scheduler->active)
			FUNC2(&scheduler->notify, &scheduler->mutex);
		FUNC4(&scheduler->mutex);
	}
#ifdef HAVE_CUDA
	if (CCV_STREAM_GET_CONTEXT(stream_context->type) == CCV_STREAM_CONTEXT_GPU)
		ccv_nnc_synchronize_stream_context(stream_context);
#endif
}