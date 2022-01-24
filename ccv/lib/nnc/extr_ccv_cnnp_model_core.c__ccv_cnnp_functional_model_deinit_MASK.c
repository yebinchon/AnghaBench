#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_5__* io; } ;
typedef  TYPE_1__ ccv_cnnp_model_t ;
typedef  TYPE_2__* ccv_cnnp_model_io_t ;
struct TYPE_10__ {int sequence_size; TYPE_2__** sequence; } ;
typedef  TYPE_3__ ccv_cnnp_functional_model_t ;
struct TYPE_11__ {int rnum; } ;
struct TYPE_9__ {TYPE_1__* model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(ccv_cnnp_model_t* const super)
{
	ccv_cnnp_functional_model_t* const self = (ccv_cnnp_functional_model_t*)super;
	int i, j = 0, k;
	for (i = 0; i < self->sequence_size; i++)
	{
		ccv_cnnp_model_t* const model = self->sequence[i]->model;
		if (!model)
			continue;
		self->sequence[j++] = (ccv_cnnp_model_io_t)model;
		// Go through all their IO to remove itself as model.
		FUNC0(model->io);
		for (k = 0; k < model->io->rnum; k++)
		{
			ccv_cnnp_model_io_t model_io = *(ccv_cnnp_model_io_t*)FUNC1(model->io, k);
			model_io->model = 0;
		}
	}
	for (i = 0; i < j; i++)
		FUNC2((ccv_cnnp_model_t*)self->sequence[i]);
}