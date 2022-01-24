#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  tensor; int /*<<< orphan*/  graph_exec; } ;
typedef  TYPE_1__ ccv_cnnp_rewind_symbol_t ;
struct TYPE_12__ {TYPE_3__* graph; TYPE_3__* compiled_data; } ;
typedef  TYPE_2__ ccv_cnnp_model_t ;
struct TYPE_13__ {int rnum; struct TYPE_13__* rewindables; } ;
typedef  TYPE_3__ ccv_cnnp_compiled_data_t ;

/* Variables and functions */
 scalar_t__ CCV_CNNP_REWIND_GRAPH_EXEC ; 
 scalar_t__ CCV_CNNP_REWIND_TENSOR ; 
 int /*<<< orphan*/  CCV_NNC_AUTOGEN_SOURCES_AND_DESTINATIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ccv_cnnp_model_t* const model)
{
	FUNC0(model->graph);
	FUNC0(model->compiled_data);
	ccv_cnnp_compiled_data_t* const compiled_data = model->compiled_data;
	FUNC0(compiled_data->rewindables);
	int i;
	for (i = 0; i < compiled_data->rewindables->rnum; i++)
	{
		const ccv_cnnp_rewind_symbol_t* const rewind_symbol = (ccv_cnnp_rewind_symbol_t*)FUNC2(compiled_data->rewindables, i);
		if (rewind_symbol->type == CCV_CNNP_REWIND_GRAPH_EXEC)
			FUNC4(model->graph, rewind_symbol->graph_exec);
		else if (rewind_symbol->type == CCV_CNNP_REWIND_TENSOR)
			FUNC5(model->graph, rewind_symbol->tensor);
	}
	FUNC1(compiled_data->rewindables);
	FUNC3(model->graph, 0, 0, CCV_NNC_AUTOGEN_SOURCES_AND_DESTINATIONS);
}