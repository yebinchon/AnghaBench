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
struct TYPE_3__ {float a; TYPE_2__ super; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ ccv_cnnp_model_scalar_mul_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const* const) ; 
 int /*<<< orphan*/  ccv_cnnp_scalar_mul_isa ; 

ccv_cnnp_model_t* FUNC2(const float a, const char* const name)
{
	ccv_cnnp_model_scalar_mul_t* const model_scalar_mul = (ccv_cnnp_model_scalar_mul_t*)FUNC0(1, sizeof(ccv_cnnp_model_scalar_mul_t));
	model_scalar_mul->super.isa = &ccv_cnnp_scalar_mul_isa;
	model_scalar_mul->super.input_size = 1;
	model_scalar_mul->super.outputs = &model_scalar_mul->output;
	model_scalar_mul->super.output_size = 1;
	model_scalar_mul->a = a;
	FUNC1(&model_scalar_mul->super, name);
	return (ccv_cnnp_model_t*)model_scalar_mul;
}