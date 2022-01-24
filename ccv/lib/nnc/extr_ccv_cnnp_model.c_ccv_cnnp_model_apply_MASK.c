#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ccv_cnnp_model_io_s {int dummy; } ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
struct TYPE_9__ {int output_size; void* io; } ;
typedef  TYPE_1__ ccv_cnnp_model_t ;
typedef  TYPE_2__* ccv_cnnp_model_io_t ;
struct TYPE_10__ {void* outgoings; void* incomings; int /*<<< orphan*/ * outputs; TYPE_1__* model; scalar_t__ visit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (void*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__* const* const,int) ; 

ccv_cnnp_model_io_t FUNC7(ccv_cnnp_model_t* const model, const ccv_cnnp_model_io_t* const inputs, const int input_size)
{
	FUNC0(input_size > 0);
	if (!model->io)
		model->io = FUNC3(sizeof(ccv_cnnp_model_io_t), 1, 0);
	ccv_cnnp_model_io_t model_io = FUNC1(sizeof(struct ccv_cnnp_model_io_s) + sizeof(ccv_nnc_tensor_symbol_t) * model->output_size);
	model_io->visit = 0;
	model_io->model = model;
	model_io->incomings = FUNC3(sizeof(ccv_cnnp_model_io_t), 1, 0);
	model_io->outgoings = 0;
	model_io->outputs = (ccv_nnc_tensor_symbol_t*)(model_io + 1);
	FUNC4(model->io, &model_io);
	int i;
	FUNC5(model_io->incomings, input_size);
	FUNC6(FUNC2(model_io->incomings, 0), inputs, sizeof(ccv_cnnp_model_io_t) * input_size);
	for (i = 0; i < input_size; i++)
	{
		if (!inputs[i]->outgoings)
			inputs[i]->outgoings = FUNC3(sizeof(ccv_cnnp_model_io_t), 1, 0);
		FUNC4(inputs[i]->outgoings, &model_io);
	}
	return model_io;
}