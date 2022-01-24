#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; scalar_t__ emit_context; } ;
typedef  TYPE_1__ ccv_nnc_stream_signal_t ;

/* Variables and functions */
 scalar_t__ CCV_STREAM_CONTEXT_GPU ; 
 scalar_t__ FUNC0 (int const) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__* const) ; 

ccv_nnc_stream_signal_t* FUNC3(const int type)
{
	ccv_nnc_stream_signal_t* const signal = (ccv_nnc_stream_signal_t*)FUNC1(sizeof(ccv_nnc_stream_signal_t));
	signal->type = type;
	signal->emit_context = 0;
#ifdef HAVE_CUDA
	if (CCV_STREAM_GET_CONTEXT(type) == CCV_STREAM_CONTEXT_GPU)
		return ccv_nnc_init_stream_signal(signal);
#endif
	return signal;
}