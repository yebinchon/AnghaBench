#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* context_deinit ) (int /*<<< orphan*/ ) ;scalar_t__ iter; } ;
typedef  TYPE_1__ ccv_cnnp_dataframe_reducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void* const context)
{
	ccv_cnnp_dataframe_reducer_t* const reducer = (ccv_cnnp_dataframe_reducer_t*)context;
	if (reducer->iter)
		FUNC1(reducer->iter);
	if (reducer->context_deinit)
		reducer->context_deinit(reducer->context);
	FUNC0(reducer);
}