#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;
struct TYPE_4__ {int input_size; int output_size; int /*<<< orphan*/ * outputs; int /*<<< orphan*/ * isa; } ;
struct TYPE_3__ {TYPE_2__ super; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ ccv_cnnp_model_flatten_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  ccv_cnnp_flatten_isa ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const* const) ; 

ccv_cnnp_model_t* FUNC2(const char* const name)
{
	ccv_cnnp_model_flatten_t* const model_flatten = (ccv_cnnp_model_flatten_t*)FUNC0(1, sizeof(ccv_cnnp_model_flatten_t));
	model_flatten->super.isa = &ccv_cnnp_flatten_isa;
	model_flatten->super.input_size = 1;
	model_flatten->super.outputs = &model_flatten->output;
	model_flatten->super.output_size = 1;
	FUNC1(&model_flatten->super, name);
	return (ccv_cnnp_model_t*)model_flatten;
}