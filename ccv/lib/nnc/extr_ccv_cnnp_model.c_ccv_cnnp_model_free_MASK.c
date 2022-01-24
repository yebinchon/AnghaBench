#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* const name; scalar_t__ compiled_data; scalar_t__ graph; struct TYPE_10__* const inputs; TYPE_6__* io; TYPE_6__* incomings; TYPE_6__* outgoings; TYPE_1__* isa; } ;
typedef  TYPE_2__ ccv_cnnp_model_t ;
typedef  TYPE_2__* ccv_cnnp_model_io_t ;
struct TYPE_11__ {int rnum; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* deinit ) (TYPE_2__* const) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__* const) ; 

void FUNC6(ccv_cnnp_model_t* const model)
{
	if (model->isa->deinit)
		model->isa->deinit(model);
	if (model->io)
	{
		int i;
		for (i = 0; i < model->io->rnum; i++)
		{
			ccv_cnnp_model_io_t model_io = *(ccv_cnnp_model_io_t*)FUNC3(model->io, i);
			if (model_io->outgoings)
				FUNC2(model_io->outgoings);
			if (model_io->incomings)
				FUNC2(model_io->incomings);
			FUNC1(model_io);
		}
		FUNC2(model->io);
	}
	if (model->inputs)
		FUNC1(model->inputs);
	if (model->graph)
		FUNC4(model->graph);
	if (model->compiled_data)
		FUNC0(model->compiled_data);
	if (model->name)
		FUNC1(model->name);
	FUNC1(model);
}