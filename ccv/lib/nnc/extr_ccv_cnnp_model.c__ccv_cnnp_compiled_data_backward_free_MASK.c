#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ graph_exec_arena; scalar_t__ tensor_arena; scalar_t__ accum; scalar_t__ gradients; } ;
struct TYPE_5__ {TYPE_1__ backward; } ;
typedef  TYPE_2__ ccv_cnnp_compiled_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(ccv_cnnp_compiled_data_t* const compiled_data)
{
	if (compiled_data->backward.gradients)
		FUNC0(compiled_data->backward.gradients);
	compiled_data->backward.gradients = 0;
	if (compiled_data->backward.accum)
		FUNC2(compiled_data->backward.accum);
	compiled_data->backward.accum = 0;
	if (compiled_data->backward.tensor_arena)
		FUNC3(compiled_data->backward.tensor_arena);
	compiled_data->backward.tensor_arena = 0;
	if (compiled_data->backward.graph_exec_arena)
		FUNC1(compiled_data->backward.graph_exec_arena);
	compiled_data->backward.graph_exec_arena = 0;
}