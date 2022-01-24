#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_t ;
struct TYPE_18__ {int output_size; int /*<<< orphan*/ * outputs; } ;
typedef  TYPE_4__ ccv_cnnp_model_t ;
typedef  TYPE_5__* ccv_cnnp_model_io_t ;
struct TYPE_15__ {int const input_size; int const output_size; } ;
struct TYPE_20__ {int sequence_size; TYPE_3__** sequence; TYPE_1__ super; } ;
typedef  TYPE_6__ ccv_cnnp_functional_model_t ;
struct TYPE_21__ {int rnum; } ;
typedef  TYPE_7__ const ccv_array_t ;
struct TYPE_19__ {int /*<<< orphan*/ * outputs; TYPE_2__* model; } ;
struct TYPE_17__ {int /*<<< orphan*/ * outputs; TYPE_4__* model; TYPE_7__ const* incomings; } ;
struct TYPE_16__ {int output_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__ const*) ; 
 scalar_t__ FUNC3 (TYPE_7__ const*,int) ; 
 TYPE_7__ const* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__* const,int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
	ccv_cnnp_functional_model_t* const self = (ccv_cnnp_functional_model_t*)super;
	FUNC0(self->super.input_size == input_size);
	FUNC0(self->super.output_size == output_size);
	int i, j, k;
	for (i = 0; i < self->super.input_size; i++)
		self->sequence[i]->outputs[0] = self->sequence[i]->model->outputs[0] = inputs[i]; // Assigning the output symbol of input layer to be the input symbol.
	ccv_array_t* input_symbols = FUNC4(sizeof(ccv_nnc_tensor_symbol_t), 1, 0);
	for (i = self->super.input_size; i < self->sequence_size; i++)
	{
		ccv_cnnp_model_t* const sub_model = self->sequence[i]->model;
		FUNC1(input_symbols);
		const ccv_array_t* const incomings = self->sequence[i]->incomings;
		for (j = 0; j < incomings->rnum; j++)
		{
			const ccv_cnnp_model_io_t input = *(ccv_cnnp_model_io_t*)FUNC3(incomings, j);
			for (k = 0; k < input->model->output_size; k++)
				FUNC5(input_symbols, &input->outputs[k]);
		}
		// Go through each sub model to build the graph.
		FUNC6(sub_model, graph, (ccv_nnc_tensor_symbol_t*)FUNC3(input_symbols, 0), input_symbols->rnum, self->sequence[i]->outputs, sub_model->output_size);
	}
	FUNC2(input_symbols);
	for (i = output_size, k = self->sequence_size - 1; k >= 0; k--)
	{
		ccv_cnnp_model_t* const sub_model = self->sequence[k]->model;
		i -= sub_model->output_size;
		if (i < 0)
			break;
		for (j = 0; j < sub_model->output_size; j++)
			outputs[i + j] = self->sequence[k]->outputs[j];
	}
	FUNC0(i <= 0);
}