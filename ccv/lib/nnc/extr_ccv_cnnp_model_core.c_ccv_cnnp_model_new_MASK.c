#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_17__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;
typedef  TYPE_2__* ccv_cnnp_model_io_t ;
struct TYPE_23__ {int output_size; int input_size; int /*<<< orphan*/ * outputs; int /*<<< orphan*/ * isa; } ;
struct TYPE_21__ {int sequence_size; TYPE_2__** sequence; TYPE_9__ super; } ;
typedef  TYPE_3__ ccv_cnnp_functional_model_t ;
struct TYPE_22__ {int rnum; } ;
typedef  TYPE_4__ ccv_array_t ;
struct TYPE_20__ {scalar_t__ visit; TYPE_17__* model; TYPE_1__* outgoings; TYPE_4__* const incomings; } ;
struct TYPE_19__ {scalar_t__ rnum; } ;
struct TYPE_18__ {scalar_t__ output_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__* const) ; 
 TYPE_2__** FUNC4 (TYPE_4__* const,int) ; 
 TYPE_4__* FUNC5 (int,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__* const,TYPE_2__* const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__* const,int const) ; 
 int /*<<< orphan*/  ccv_cnnp_functional_model_isa ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,char const* const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,TYPE_2__* const* const,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

ccv_cnnp_model_t* FUNC11(const ccv_cnnp_model_io_t* const inputs, const int input_size, const ccv_cnnp_model_io_t* const outputs, const int output_size, const char* const name)
{
	FUNC1(output_size > 0);
	// Do topological sort.
	ccv_array_t* const reverse_top = FUNC5(sizeof(ccv_cnnp_model_io_t), output_size, 0);
	FUNC7(reverse_top, output_size);
	FUNC9(FUNC4(reverse_top, 0), outputs, sizeof(ccv_cnnp_model_io_t) * output_size);
	// Go from the output, until we meet inputs.
	int i, j, k;
	uint64_t input_bitmask[((input_size - 1) >> 6) + 1];
	FUNC10(input_bitmask, 0, sizeof(uint64_t) * (((input_size - 1) >> 6) + 1));
	int tensor_output_size = 0; // io can be mapped to multiple tensor outputs, therefore, need to compute the exact tensor output size.
	for (i = 0; i < output_size; i++)
		tensor_output_size += outputs[i]->model->output_size;
	for (i = 0; i < reverse_top->rnum; i++)
	{
		const ccv_cnnp_model_io_t output = *(ccv_cnnp_model_io_t*)FUNC4(reverse_top, i);
		FUNC1(!FUNC0(output->model));
		// If it is input, push it here.
		if (output->incomings)
			for (j = 0; j < output->incomings->rnum; j++)
			{
				const ccv_cnnp_model_io_t input = *(ccv_cnnp_model_io_t*)FUNC4(output->incomings, j);
				++input->visit; // Mark it as visited.
				if (input->visit != input->outgoings->rnum) // Not all dependencies visited.
					continue;
				if (!FUNC0(input->model))
					FUNC6(reverse_top, &input);
				else {
					for (k = 0; k < input_size; k++)
						if (input == inputs[k])
							break;
					FUNC1(k < input_size);
					input_bitmask[k >> 6] |= ((uint64_t)1 << (k & 63));
				}
			}
	}
	for (i = 0; i < reverse_top->rnum; i++)
	{
		const ccv_cnnp_model_io_t output = *(ccv_cnnp_model_io_t*)FUNC4(reverse_top, i);
		output->visit = 0; // Clean the visit back.
	}
	for (i = 0; i < input_size; i++)
		inputs[i]->visit = 0; // Clean the visit back.
	for (i = 0; i < input_size; i++)
		{ FUNC1((input_bitmask[i >> 6] & ((uint64_t)1 << (i & 63)))); } // Assuming they all match.
	const int sequence_size = reverse_top->rnum + input_size;
	ccv_cnnp_functional_model_t* const functional_model = (ccv_cnnp_functional_model_t*)FUNC2(1, sizeof(ccv_cnnp_functional_model_t) + sizeof(ccv_cnnp_model_t*) * (sequence_size - 1) + sizeof(ccv_nnc_tensor_symbol_t) * tensor_output_size);
	functional_model->super.isa = &ccv_cnnp_functional_model_isa;
	functional_model->super.outputs = (ccv_nnc_tensor_symbol_t*)(functional_model->sequence + sequence_size);
	functional_model->super.output_size = tensor_output_size;
	functional_model->super.input_size = input_size;
	FUNC8(&functional_model->super, name);
	functional_model->sequence_size = sequence_size;
	FUNC9(functional_model->sequence, inputs, sizeof(ccv_cnnp_model_io_t) * input_size);
	for (i = 0; i < reverse_top->rnum; i++)
		functional_model->sequence[input_size + i] = *(ccv_cnnp_model_io_t*)FUNC4(reverse_top, reverse_top->rnum - 1 - i);
	FUNC3(reverse_top);
	return (ccv_cnnp_model_t*)functional_model;
}