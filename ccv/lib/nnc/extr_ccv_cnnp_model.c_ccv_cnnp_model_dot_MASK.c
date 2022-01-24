#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* compiled_data; scalar_t__ graph; } ;
typedef  TYPE_4__ ccv_cnnp_model_t ;
struct TYPE_7__ {scalar_t__ graph; } ;
struct TYPE_6__ {scalar_t__ accum; } ;
struct TYPE_8__ {TYPE_2__ apply_gradients; TYPE_1__ backward; scalar_t__ graph; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int const,int /*<<< orphan*/ *) ; 

void FUNC2(const ccv_cnnp_model_t* const model, const int flags, FILE** const outs, const int out_size)
{
	if (model->graph && out_size > 0)
		FUNC1(model->graph, flags, outs[0]);
	if (model->compiled_data && model->compiled_data->graph && out_size > 1)
		FUNC0(model->compiled_data->graph, flags, outs[1]);
	if (model->compiled_data && model->compiled_data->backward.accum && out_size > 2)
		FUNC0(model->compiled_data->backward.accum, flags, outs[2]);
	if (model->compiled_data && model->compiled_data->apply_gradients.graph && out_size > 3)
		FUNC0(model->compiled_data->apply_gradients.graph, flags, outs[3]);
}