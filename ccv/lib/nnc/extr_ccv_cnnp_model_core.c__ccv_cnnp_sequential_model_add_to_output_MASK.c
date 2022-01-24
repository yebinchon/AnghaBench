#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sequence_size; int /*<<< orphan*/ * sequence; } ;
typedef  TYPE_1__ ccv_cnnp_sequential_model_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_add_to_array_f ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,void* const) ; 

__attribute__((used)) static void FUNC1(ccv_cnnp_model_t* const super, const ccv_cnnp_add_to_array_f add_to_array, void* const outputs)
{
	ccv_cnnp_sequential_model_t* const self = (ccv_cnnp_sequential_model_t*)super;
	int i;
	for (i = 0; i < self->sequence_size; i++)
		FUNC0(self->sequence[i], add_to_array, outputs);
}